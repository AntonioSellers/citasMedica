<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>citasMedica</title>
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /* Estilos adicionales */
        .carousel-inner img {
            height: 800px;
            object-fit: cover;
        }
        .especialidad {
            margin-bottom: 20px; /* Espacio entre imágenes */
            text-align: center;
        }
        .especialidad img {
            width: 100%;
            max-width: 200px; /* Ancho máximo para las imágenes */
            height: auto;
        }
        .especialidad span {
            display: block;
        }
    </style>
</head>
<body class="antialiased">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="{{ asset('img/brand/favicon.png') }}" alt="Logo" width="30" height="24">
            citasMedica
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#especialidades">Especialidades</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#info">Información</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#ubicacion">Ubicación</a>
                </li>
            </ul>
            <div>
                @auth
                    <a href="{{ url('/home') }}" class="btn btn-outline-dark me-2">Home</a>
                @else
                    <a href="{{ route('login') }}" class="btn btn-outline-dark me-2">Log in</a>
                    @if (Route::has('register'))
                        <a href="{{ route('register') }}" class="btn btn-outline-dark">Register</a>
                    @endif
                @endauth
            </div>
        </div>
    </div>
</nav>

<div class="container-fluid my-5">
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="{{ asset('img/brand/plantilla.avif') }}" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="{{ asset('img/brand/registro.jpg') }}" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="{{ asset('img/brand/instalaciones.avif') }}" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<div class="container mt-5" id="especialidades">
    <h2 class="text-center">Especialidades Médicas</h2>
    <br>
    <div class="row justify-content-center">
        <!-- Neurología -->
        <div class="col-md-4 especialidad">
            <img src="{{ asset('img/brand/neurologia.jpg') }}" alt="Neurología" class="img-fluid rounded-circle mx-auto d-block">
            <span>Neurología</span>
        </div> 
        <!-- Quirúrgica -->
        <div class="col-md-4 especialidad">
            <img src="{{ asset('img/brand/quirurgica.jpg') }}" alt="Cirugía General" class="img-fluid rounded-circle mx-auto d-block">
            <span>Quirúrgica</span>
        </div>
        <!-- Pediatría -->
        <div class="col-md-4 especialidad">
            <img src="{{ asset('img/brand/pediatria.jpg') }}" alt="Pediatría" class="img-fluid rounded-circle mx-auto d-block">
            <span>Pediatría</span>
        </div>
    </div>
    <div class="row mt-5 justify-content-center">
        <!-- Cardiología -->
        <div class="col-md-4 especialidad">
            <img src="{{ asset('img/brand/cardiologia.jpg') }}" alt="Cardiología" class="img-fluid rounded-circle mx-auto d-block">
            <span>Cardiología</span>
        </div>
        <!-- Urología -->
        <div class="col-md-4 especialidad">
            <img src="{{ asset('img/brand/urologia.jpg') }}" alt="Urología" class="img-fluid rounded-circle mx-auto d-block">
            <span>Urología</span>
        </div>
        <!-- Dermatología -->
        <div class="col-md-4 especialidad">
            <img src="{{ asset('img/brand/dermatologia.jpg') }}" alt="Dermatología" class="img-fluid rounded-circle mx-auto d-block">
            <span>Dermatología</span>
        </div>
    </div>
</div>

<div class="container mt-5" id="info">
    </br>
    <h2 class="text-center">¡Bienvenidos a nuestra nueva clínica!</h2>
    </br>
    <p>Somos una clínica médica completamente nueva, formada por un equipo de expertos apasionados y dedicados en el campo de la medicina. Nuestro objetivo es brindar la mejor atención médica posible a nuestros pacientes, combinando la última tecnología con un enfoque humano y compasivo.</p>
    <p>Nuestra clínica cuenta con un equipo de especialistas altamente calificados en diversas áreas de la medicina, incluyendo neurología, cirugía general, pediatría, cardiología, urología y dermatología. Estamos comprometidos a proporcionar un cuidado integral y personalizado a cada paciente que confía en nosotros para su atención médica.</p>
    <p>En nuestra clínica, nos esforzamos por crear un ambiente acogedor y confortable para nuestros pacientes. Nuestras instalaciones están equipadas con tecnología de vanguardia para garantizar diagnósticos precisos y tratamientos efectivos.</p>
    <p>Estamos entusiasmados de iniciar este viaje con ustedes y esperamos poder servir a nuestra comunidad con los más altos estándares de atención médica. ¡Gracias por confiar en nosotros!</p>
</div>


<div class="container-fluid mt-5 p-0" id="ubicacion">
    <h2 class="text-center">Ubicación</h2>
    <!-- Google Maps Embed -->
    <div class="col-md-12 mt-4">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12998.120619745615!2d-0.49090676073396586!3d38.352695839071284!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd623e5f848b2ab7%3A0x720e8b1836255fa1!2sCalle%20de%20San%20Fernando%2C%2003004%20Alacant%2C%20Alicante%2C%20Spain!5e0!3m2!1sen!2suk!4v1653800737547!5m2!1sen!2suk" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>
</div>

<footer class="bg-dark text-white text-center py-4">
    <div class="container">
        <h5>¡Síguenos en redes sociales!</h5>
        <p>Cualquier consulta, contáctenos</p>
        <a href="https://wa.me/34619346138" target="_blank" class="text-white"><img src="{{ asset('img/brand/whatsapp.svg') }}" style="width: 30px; height: 30px;" class="me-3"></a>
        <a href="https://www.instagram.com/antoniosellerrs_/" target="_blank" class="text-white"><img src="{{ asset('img/brand/instagram.svg.webp') }}" style="width: 30px; height: 30px;" class="me-3"></a>
        <a href="#" target="_blank" class="text-white"><img src="{{ asset('img/brand/github.svg') }}" style="width: 30px; height: 30px;"></a>
    </div>
</footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
