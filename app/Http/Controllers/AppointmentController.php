<?php

namespace App\Http\Controllers;

use App\Models\Appointment;
use App\Interfaces\HorarioServiceInterface;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Validator;
use App\Models\Specialty;
use App\Models\CancelledAppointment;
use Barryvdh\DomPDF\Facade;
use Illuminate\Support\Facades\Mail;
use App\Mail\AppointmentConfirmed;
use PDF;



class AppointmentController extends Controller
{

    public function index(){

        $role = auth()->user()->role;

        if($role == 'admin'){
            //Admin
            $confirmedAppointments = Appointment::all()
            ->where('status', 'Confirmada');
            $pendingAppointments = Appointment::all()
            ->where('status', 'Reservada');
            $oldAppointments = Appointment::all()
            ->whereIn('status', ['Atendida','Cancelada']);
        }elseif($role == 'doctor'){
            //Doctor
            $confirmedAppointments = Appointment::all()
            ->where('status', 'Confirmada')
            ->where('doctor_id', auth()->id());
            $pendingAppointments = Appointment::all()
            ->where('status', 'Reservada')
            ->where('doctor_id', auth()->id());
            $oldAppointments = Appointment::all()
            ->whereIn('status', ['Atendida','Cancelada'])
            ->where('doctor_id', auth()->id());
        }elseif($role == 'paciente'){
            //Pacientes
            $confirmedAppointments = Appointment::all()
            ->where('status', 'Confirmada')
            ->where('patient_id', auth()->id());
            $pendingAppointments = Appointment::all()
            ->where('status', 'Reservada')
            ->where('patient_id', auth()->id());
            $oldAppointments = Appointment::all()
            ->whereIn('status', ['Atendida','Cancelada'])
            ->where('patient_id', auth()->id());
        }

        
        return view('appointments.index', 
        compact('confirmedAppointments', 'pendingAppointments', 'oldAppointments', 'role') );
    }

    public function pdf($id)
    {
        // Obtener los datos de la cita por su ID
        $appointment = Appointment::findOrFail($id);

        // Definir el rol del usuario (supongo que ya está definido)
        $role = auth()->user()->role;

        // Cargar la vista del PDF con los datos de la cita y el rol
        $pdf = PDF::loadView('appointments.pdf', compact('appointment', 'role'));

        // Devolver el PDF generado
        return $pdf->stream();
    }

    

    public function create(HorarioServiceInterface $horarioServiceInterface) {
        $specialties = Specialty::all();

        $specialtyId = old('specialty_id');
        if ($specialtyId) {
            $specialty = Specialty::find($specialtyId);
            $doctors = $specialty->users;
        } else {
            $doctors = collect();
        }

        $date = old('scheduled_date');
        $doctorId = old('doctor_id');
        if ($date && $doctorId) {
            $intervals = $horarioServiceInterface->getAvailableIntervals($date, $doctorId);
        }else {
            $intervals = null;
        }

        return view('appointments.create', compact('specialties', 'doctors', 'intervals'));
    }

    public function store(Request $request, HorarioServiceInterface $horarioServiceInterface) {

        $rules = [
            'scheduled_time' => 'required',
            'type' => 'required',
            'description' => 'required',
            'doctor_id' => 'exists:users,id',
            'specialty_id' => 'exists:specialties,id'
        ];

        $messages = [
            'scheduled_time.required' => 'Debe seleccionar una hora para su cita.',
            'type.required' => 'Debe seleccionar el tipo de consulta.',
            'description.required' => 'Debe poner sus síntomas.'
        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        $validator->after(function ($validator) use ($request, $horarioServiceInterface) {

            $date = $request->input('scheduled_date');
            $doctorId = $request->input('doctor_id');
            $scheduled_time = $request->input('scheduled_time');
            if ($date && $doctorId && $scheduled_time) {
                $start = new Carbon($scheduled_time);
            }else {
                return;
            }

            if (!$horarioServiceInterface->isAvailableInterval($date, $doctorId, $start)) {
                $validator->errors()->add(
                    'available_time', 'La hora seleccionada ya se encuentra reservada por otro paciente.'
                );
            }
        });

        if ($validator->fails()) {
            return back()
                        ->withErrors($validator)
                        ->withInput();
        }

        $data = $request->only([
            'scheduled_date',
            'scheduled_time',
            'type',
            'description',
            'doctor_id',
            'specialty_id'
        ]);
        $data['patient_id'] = auth()->id();
        
        $carbonTime = Carbon::createFromFormat('g:i A', $data['scheduled_time']);
        $data['scheduled_time'] = $carbonTime->format('H:i:s');

        Appointment::create($data);

        $notification = 'La cita se ha realizado correctamente.';
        return redirect('/miscitas')->with(compact('notification'));
    }

    public function cancel(Appointment $appointment, Request $request) {

        if($request->has('justification')){
            $cancellation = new CancelledAppointment();
            $cancellation->justification = $request->input('justification');
            $cancellation->cancelled_by_id = auth()->id();

            $appointment->cancellation()->save($cancellation);
        }

        $appointment->status = 'Cancelada';
        $appointment->save();
        $notification = 'La cita se ha cancelado correctamente.';

        return redirect('/miscitas')->with(compact('notification'));
    }

    public function confirm(Appointment $appointment)
    {
        // Cambiar el estado de la cita a "Confirmada"
        $appointment->status = 'Confirmada';
        $appointment->save();

        // Enviar el correo electrónico de confirmación
        Mail::to($appointment->patient->email)->send(new AppointmentConfirmed($appointment));

        // Redireccionar con una notificación
        $notification = 'La cita se ha confirmado correctamente.';
        return redirect('/miscitas')->with(compact('notification'));
    }

    public function formCancel(Appointment $appointment) {
        if($appointment->status == 'Confirmada' || 'Reservada'){
            $role = auth()->user()->role;
            return view('appointments.cancel', compact('appointment', 'role'));
        }
        return redirect('/miscitas');
        
    }

    public function show(Appointment $appointment){
        $role = auth()->user()->role;
        return view('appointments.show', compact('appointment', 'role'));
    }
}
