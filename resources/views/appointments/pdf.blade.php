<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <!-- Bootstrap CSS v5.3.2 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            text-align: center; /* Centrar elementos en el cuerpo */
        }
        .clinic-info {
            display: flex;
            align-items: center; /* Centrar verticalmente */
            justify-content: center; /* Centrar horizontalmente */
            margin-bottom: 20px;
        }
        .clinic-info img {
            max-width: 100px;
            margin-right: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px; /* Agregar espacio entre la tabla y el logo/título */
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .badge {
            font-size: 0.8rem;
            font-weight: bold;
            padding: 0.3rem 0.6rem;
            border-radius: 0.25rem;
        }
        .badge-danger {
            background-color: #dc3545;
            color: #fff;
        }
        .badge-primary {
            background-color: #007bff;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="clinic-info">
        <img src="{{ asset('img/brand/favicon.png') }}" alt="Logo">
        <h2>CitasMedica</h2>
    </div>

    <table>
        <tr>
            <th>Detalle</th>
            <th>Datos</th>
        </tr>
        <tr>
            <td>Fecha:</td>
            <td>{{$appointment->scheduled_date}}</td>
        </tr>
        <tr>
            <td>Hora de atención:</td>
            <td>{{$appointment->scheduled_time_12}}</td>
        </tr>
        @if($role == 'paciente' || $role == 'admin')
            <tr>
                <td>Doctor:</td>
                <td>{{$appointment->doctor->name}}</td>
            </tr>
        @endif
        @if($role == 'doctor' || $role == 'admin')
            <tr>
                <td>Paciente:</td>
                <td>{{$appointment->patient->name}}</td>
            </tr>
        @endif
        <tr>
            <td>Especialidad:</td>
            <td>{{$appointment->specialty->name}}</td>
        </tr>
        <tr>
            <td>Tipo de consulta:</td>
            <td>{{$appointment->type}}</td>
        </tr>
        <tr>
            <td>Estado:</td>
            <td>
                @if($appointment->status == 'Cancelada')
                    <span class="badge badge-danger">Cancelada</span>
                @else
                    <span class="badge badge-primary">{{ $appointment->status }}</span>
                @endif
            </td>
        </tr>
        <tr>
            <td>Síntomas:</td>
            <td>{{$appointment->description}}</td>
        </tr>
    </table>

    @if($appointment->status == 'Cancelada')
        <div class="alert bg-light text-primary">
            <h3>Detalles de la cancelación</h3>
            @if($appointment->cancellation)
            <ul>
                <li>
                    <strong>Fecha de cancelación:</strong>
                    {{ $appointment->cancellation->created_at }}
                </li>
                <li>
                    <strong>La cita fue cancelada por:</strong>
                    {{ $appointment->cancellation->cancelled_by->name }}
                </li>
                <li>
                    <strong>Motivo de la cancelación:</strong>
                    {{ $appointment->cancellation->justification }}
                </li>
            </ul>
            @else 
            <ul>
                <li>La cita fue cancelada antes de su confirmación.</li>
            </ul>
            @endif
        </div>
    @endif

    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>
