<%@page import="com.google.gson.Gson"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Lab01 Idle</title>
        <link rel="icon" type="image/x-icon" href="../assets/img/favicon.ico" />
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
        <link href="../css/default.css" rel="stylesheet" type="text/css"/>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Core theme JS-->
        <script src="../js/script.js" type="text/javascript"></script>

        <script src="../js/jquery.seat-charts.js"></script>
        <link rel="stylesheet" href="../css/jquery.seat-charts.css">

        <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css" />

    </head>


    <body id="page-top">

        <div id="navbar"></div>


        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" >
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active" style="background-image: url('../assets/img/car01.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="display-4">El genio se hace con un 1% de talento,</h3>
                        <p class="display-5">y un 99% de trabajo.  Albert Einstein</p>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url('../assets/img/car02.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="display-4">Pregúntate si lo que estás haciendo hoy</h3>
                        <p class="display-5">te acerca al lugar en el que quieres estar mañana. Walt Disney</p>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url('../assets/img/car03.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="display-4">Ten el coraje para hacer lo que te dice</h3>
                        <p class="display-5">tu corazón y tu intuición.  Steve Jobs</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!-- Page Content -->
        <section class="py-5" id="about">
            <div class="container">
                <h1 class="font-weight-light" style="color:white; text-align: center;">No olvidaras esta experiencia.</h1>
            </div>
        </section>



        <!-- Contact-->
        <section class="contact-section bg-black" id="signup">
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
        <%@ include file="../presentation/modals.jsp" %>



    </body>
</html>

