<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class AppointmentConfirmed extends Mailable
{
    use Queueable, SerializesModels;

    public $appointment;

    /**
     * Create a new message instance.
     *
     * @param \App\Models\Appointment $appointment
     */
    public function __construct(\App\Models\Appointment $appointment)
    {
        $this->appointment = $appointment;
    }


    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('confirmacionCita@gmail.com', 'Maria Jose')
                    ->subject('Su cita ha sido confirmada')
                    ->view('emails.appointment_confirmed');
    }
}