<%@page import="com.google.gson.Gson"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Lab01</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.22/r-2.2.6/sc-2.0.3/datatables.min.js"></script>
        <script src="https://cdn.rawgit.com/PascaleBeier/bootstrap-validate/v2.2.0/dist/bootstrap-validate.js" ></script>
        <link href="css/default.css" rel="stylesheet" type="text/css"/>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/script.js" type="text/javascript"></script>

        <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css" />

    </head>


    <body id="page-top">

        <div id="navbar"></div>


        <!-- Masthead-->
        <header class="masthead">
            <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                    <h1 class="mx-auto my-0 text-uppercase">Dreamcatchers</h1>
                    <h2 class="text-white-50 mx-auto mt-2 mb-5">Atrévete a creer.</h2>
                    <h2 class="text-white-50 mx-auto mt-2 mb-5">¡Encuentra el lugar perfecto para tí en donde realizar tu práctica profesional!</h2>
                    <a class="btn btn-primary js-scroll-trigger" data-toggle='modal' data-target="#registerModal">Registrarse</a>
                    <div style="padding-top: 5%; font-size: 20px; color: rgba(255, 255, 255, 0.5); ">¿Representas a una empresa que busca pasantes? <a data-toggle='modal' data-target="#registerModal" style="color: #409695; ">¡Registrá tú empresa!</a></div>
                </div>
            </div>
        </header>


        <!-- About-->
        <section class="about-section text-center" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2 class="text-white mb-4">Siempre parece imposible...</h2>
                        <p class="text-white-50">
                            ¡Hasta que se hace! - Nelson Mandela.
                        </p>
                    </div>
                </div>
                <img class="img-fluid" src="assets/img/ipad.png" alt="" />
            </div>
        </section>


        <!-- Projects-->
        <section class="projects-section bg-light" id="projects">
            <div class="container">
                <!-- Featured Project Row-->
                <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                    <div class="col-xl-8 col-lg-7"><img class="img-fluid mb-3 mb-lg-0" src="assets/img/airplane-flight-sunset.jpg" alt="" /></div>
                    <div class="col-xl-4 col-lg-5">
                        <div class="featured-text text-center text-lg-left">
                            <h4>Empieza tu vida laboral con éxito.</h4>
                            <p class="text-white-50 mb-0">¡Arriésgate!</p>
                        </div>
                    </div>
                </div>
                <!-- Project One Row-->
                <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
                    <div class="col-lg-6"><img class="img-fluid" src="assets/img/demo-image-01.jpg" alt="" /></div>
                    <div class="col-lg-6">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left">
                                    <h4 class="text-black">Haz crecer tu valor como profesional.</h4>
                                    <p class="mb-0 text-black-50">Cultiva grandes aptitudes para un futuro laboral exitoso.</p>
                                    <hr class="d-none d-lg-block mb-0 ml-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Project Two Row-->
                <div class="row justify-content-center no-gutters">
                    <div class="col-lg-6"><img class="img-fluid" src="assets/img/demo-image-02.jpg" alt="" /></div>
                    <div class="col-lg-6 order-lg-first">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-right">
                                    <h4 class="text-black">Descubre conocimiento solamente obtenido con práctica.</h4>
                                    <p class="mb-0 text-black-50">¡Nunca dejes de aprender!</p>
                                    <hr class="d-none d-lg-block mb-0 mr-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Project 3 Row-->
                <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
                    <div class="col-lg-6"><img class="img-fluid" src="assets/img/demo-image-03.jpg" alt="" /></div>
                    <div class="col-lg-6">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left">
                                    <h4 class="text-black">Trabaja en un equipo profesional con grandes metas.</h4>
                                    <p class="mb-0 text-black-50">¡Descrubre tu potencial!</p>
                                    <hr class="d-none d-lg-block mb-0 ml-0" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <!-- Signup-->
        <section class="signup-section" id="signup">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-lg-8 mx-auto text-center">
                        <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
                        <h2 class="text-white mb-5">¿A qué esperas? ¡Empieza ya a buscar en donde realizar tu práctica profesional!</h2>
                        <div class="mx-auto text-center">
                            <a class="btn btn-primary js-scroll-trigger" data-toggle='modal' data-target="#registerModal">Registrarse</a>
                        </div>
                        <div style="padding-top: 5%; font-size: 20px; color: rgba(255, 255, 255, 0.5); ">¿Representas a una empresa que busca pasantes? <a data-toggle='modal' data-target="#registerModal" style="color: black; ">¡Registrá tú empresa!</a></div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact-->
        <section class="contact-section bg-black">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Grace Brenes Agüero</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50"><a href="#!">grace.brenes.aguero@est.una.ac.cr</a></div>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-3 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Jendry Cascante Calvo</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50"><a href="#!">jendry.cascante.calvo@est.una.ac.cr</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">José Barrantes Araya</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50"><a href="#!">jose.barrantes@est.una.ac.cr</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Kevin Quesada Campos</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50"><a href="#!">kevin.quesada.campos@est.una.ac.cr</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="social d-flex justify-content-center">
                    <a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                    <a class="mx-2" href="#!"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </section>



        <!-- Modals-->
        <%@ include file="/presentation/modals.jsp" %>

    </body>
</html>
