<!DOCTYPE html>
<html>
<head>
    <title>Cita Confirmada</title>
</head>
<body>
    <h1>Su cita ha sido confirmada</h1>
    <p>Estimado/a {{ $appointment->patient->name }},</p>
    <p>Le informamos que su cita con el Dr. {{ $appointment->doctor->name }} ha sido confirmada.</p>
    <p><strong>Fecha:</strong> {{ \Carbon\Carbon::parse($appointment->scheduled_date)->format('d/m/Y') }}</p>
    <p><strong>Hora:</strong> {{ $appointment->scheduled_time }}</p>
    <p>Gracias por confiar en nosotros.</p>
</body>
</html>
