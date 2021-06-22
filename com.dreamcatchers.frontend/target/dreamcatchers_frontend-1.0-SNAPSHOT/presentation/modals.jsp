<%-- 
    Document   : modals
    Author     : KEVIN
--%>

<!-- Modal Login -->
<div id="loginModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Iniciar Sesión</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="user" placeholder="Usuario" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input class="form-check-input" type="checkbox" onclick="showPassword()">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input type="password" class="form-control" id="password" placeholder="Contraseña" required="required" autocomplete="on">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='login' onclick="logIn()">Acceder</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">¿No tienes cuenta? <a href='#registerModal' data-toggle='modal' id="reMod2">Regístrate</a></div>
        </div>
    </div>
</div>

<!-- Modal Register -->
<div id="registerModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Registro</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="user_username_rm" placeholder="Usuario" required="required">
                            <input type="email" class="form-control" id="email_rm" placeholder="Correo electrónico" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input class="form-check-input" type="checkbox" onclick="showPasswordRM()">
                            <input type="password" class="form-control" id="password_rm" placeholder="Contraseña" required="required" autocomplete="on">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="name_rm" placeholder="Nombre" required="required">
                            <input type="text" class="form-control" id="lastname_rm" placeholder="Apellidos" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="university_rm" placeholder="Universidad" required="required">
                            <input type="text" class="form-control" id="career_rm" placeholder="Carrera" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="address_rm" placeholder="Dirección" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="date" class="form-control" id="dob_rm" placeholder="Fecha de nacimiento" required="required">
                        </div>
                    </div>               

                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='register' onclick="addNewStudent()">Registrarse</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">¿Ya tienes cuenta? <a href='#loginModal' data-toggle='modal' id="logMod">Inicia sesión</a></div>
        </div>
    </div>
</div>

<!-- Modal Register Business-->
<div id="registerBusinessModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Registro empresarial</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="user_username_rm_bs" placeholder="Usuario" required="required">
                            <input type="email" class="form-control" id="email_rm_bs" placeholder="Correo electrónico" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input class="form-check-input" type="checkbox" onclick="showPasswordRM()">
                            <input type="password" class="form-control" id="password_rm_bs" placeholder="Contraseña" required="required" autocomplete="on">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="name_rm_bs" placeholder="Nombre" required="required">
                            <input type="text" class="form-control" id="description_rm_bs" placeholder="Descripcion" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="headquarters_rm_bs" placeholder="Headquarters" required="required">
                            <input type="text" class="form-control" id="address_rm_bs" placeholder="Dirección" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="website_rm_bs" placeholder="Website" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="type_rm_bs" placeholder="Tipo de empresa o área laboral" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="revenue_rm_bs" placeholder="Valor en la bolsa" required="required">
                            <input type="text" class="form-control" id="size_rm_bs" placeholder="Cantidad de empleados" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="perks_rm_bs" placeholder="Beneficios" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='registerBusiness' onclick="addNewBusiness()">Registrar empresa</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">¿Ya tienes cuenta? <a href='#loginModal' data-toggle='modal' id="logMod">Inicia sesión</a></div>
        </div>
    </div>
</div>

<!-- Modal Success -->
<div id="successModal" class="modal fade">
    <div class="modal-dialog modal-confirm">
        <div class="modal-content">
            <div class="modal-header">
                <div class="icon-box">
                    <i class="material-icons">&#xE876;</i>
                </div>				
                <h4 class="modal-title w-100">¡Listo!</h4>	
            </div>
            <div class="modal-body">
                <p id="success-text" class="text-center"></p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-success btn-block" data-dismiss="modal" onClick="window.location.reload();">OK</button>
            </div>
        </div>
    </div>
</div>     

<!-- Modal Error-->
<div id="errorModal" class="modal fade">
    <div class="modal-dialog modal-error">
        <div class="modal-content">
            <div class="modal-header">
                <div class="icon-box">
                    <i class="material-icons">&#xE5CD;</i>
                </div>				
                <h4 class="modal-title w-100">¡Lo sentimos!</h4>	
            </div>
            <div class="modal-body">
                <p id="error-text" class="text-center"></p>
            </div>
            <div class="modal-footer">
                <button id="okerror" class="btn btn-danger btn-block" data-dismiss="modal">OK</button>
            </div>
        </div>
    </div>
</div>  

<!-- Modal CV1 -->
<div id="cvSendModal1" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Envio de currículum</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="termsCheck" required>
                            <label class="form-check-label" for="termsCheck">
                                Al marcar esta casilla doy mi autorización y consentimiento para el tratamiento de mis datos personales. Así mismo, atribuye la condición e implica la aceptación plena y sin reservas de todas y cada una de las disposiciones incluidas en este documento y sus anexos.La administración se reserva el derecho de romper este contrato en cualquier momento, DreamCatchers solo podrá interrumpir servicios si se violan estos términos y condiciones.
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" onclick="checkTerms()">Siguiente</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal CV2 -->
<div id="cvSendModal2" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Envio de currículum</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group" >
                        <div class="input-group">
                            <span class="label label-info">Currículum</span>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <input
                                type="hidden"
                                role="uploadcare-uploader" />
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal Membership -->
<div id="membershipModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Membresías</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="mt-3"> <small>Plan de pago</small>
                        <div class="row mt-1">
                            <div class="col-md-6">
                                <div class="form-check"> <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" value="free" checked> <label class="form-check-label" for="flexRadioDefault1"> Gratis </label> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-check"> <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" value="week" > <label class="form-check-label" for="flexRadioDefault2"> Semanal </label> </div>
                            </div>
                        </div>
                    </div>
                    <div class="mt-3 text-center fee align-items-center">
                        <p id="monto-text" style="font-size:25px;" class="text-center"> 0 colones</p>
                    </div>

                    <div class="mt-3"> <small>Método de pago</small>
                        <div class="row mt-1">
                            <div class="col-md-6">
                                <div class="form-check"> <input class="form-check-input" type="radio"  name="payment" value="bank"> <label class="form-check-label"> <i class="fas fa-university"></i>Transferencia bancaria </label> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-check"> <input class="form-check-input" type="radio" name="payment" value="card" checked> <label class="form-check-label"><i class="fas fa-money-check"></i></i>Tarjeta de crédito </label> </div>
                            </div>
                        </div>
                    </div>


                    <div class="mt-3 mr-2">
                        <div class="row g-2">
                            <div class="col-md-6">
                                <div class="inputbox"> <small>Número de tarjeta</small> <input type="text" class="form-control" name="" id="number"> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inputbox"> <small>Nombre en tarjeta</small> <input type="text" class="form-control" name="" id="name"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="mt-3 mr-2">
                        <div class="row g-2">
                            <div class="col-md-6">
                                <div class="row g-2">
                                    <div class="col-md-6">
                                        <div class="inputbox"> <small>Año</small> <input type="text" class="form-control" name="" id="year"> </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="inputbox"> <small>Mes</small> <input type="text" class="form-control" name="" id="month"> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inputbox"> <small>CVV</small> <input type="text" class="form-control" name="" id="cvv"> </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="confirmMembership()">Aceptar</button>
            </div>

        </div>
    </div>
</div>


<!-- Modal Membership -->
<div id="membershipBModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Membresías</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="mt-3"> <small>Plan de pago</small>
                        <div class="row mt-1">
                            <div class="col-md-4">
                                <div class="form-check"> <input class="form-check-input" type="radio" name="flexRadioDefaultB" id="flexRadioDefault1B" value="free" checked> <label class="form-check-label" for="flexRadioDefault1B"> Gratis </label> </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-check"> <input class="form-check-input" type="radio" name="flexRadioDefaultB" id="flexRadioDefault2B" value="month" > <label class="form-check-label" for="flexRadioDefault2B"> Semanal </label> </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-check"> <input class="form-check-input" type="radio" name="flexRadioDefaultB" id="flexRadioDefault3B" value="anual" > <label class="form-check-label" for="flexRadioDefault3B"> Anual </label> </div>
                            </div>
                        </div>
                    </div>
                    <div class="mt-3 text-center fee align-items-center">
                        <p id="monto-textB" style="font-size:25px;" class="text-center"> 0 colones</p>
                    </div>

                    <div class="mt-3"> <small>Método de pago</small>
                        <div class="row mt-1">
                            <div class="col-md-6">
                                <div class="form-check"> <input class="form-check-input" type="radio"  name="payment" value="bank"> <label class="form-check-label"> <i class="fas fa-university"></i>Transferencia bancaria </label> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-check"> <input class="form-check-input" type="radio" name="payment" value="card" checked> <label class="form-check-label"><i class="fas fa-money-check"></i></i>Tarjeta de crédito </label> </div>
                            </div>
                        </div>
                    </div>


                    <div class="mt-3 mr-2">
                        <div class="row g-2">
                            <div class="col-md-6">
                                <div class="inputbox"> <small>Número de tarjeta</small> <input type="text" class="form-control" name="" id="numberB"> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inputbox"> <small>Nombre en tarjeta</small> <input type="text" class="form-control" name="" id="nameB"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="mt-3 mr-2">
                        <div class="row g-2">
                            <div class="col-md-6">
                                <div class="row g-2">
                                    <div class="col-md-6">
                                        <div class="inputbox"> <small>Año</small> <input type="text" class="form-control" name="" id="yearB"> </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="inputbox"> <small>Mes</small> <input type="text" class="form-control" name="" id="monthB"> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="inputbox"> <small>CVV</small> <input type="text" class="form-control" name="" id="cvvB"> </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="confirmMembership()">Aceptar</button>
            </div>

        </div>
    </div>
</div>

<!-- ---------------------Modal LIST--------------------- -->
<!-- Modal List Internship Offers-->
<div class="modal fade" id="offersListModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">

                <div class="container">
                    <div class="table-responsive">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <h2>Administrar <b>ofertas</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                    <div class="col-sm-4">
                                        <a href='#addOfferModal' data-toggle='modal' class="btn btn-success" id=''><i class="material-icons">&#xE147;</i> <span>Agregar nueva oferta</span></a>						
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='offersTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">ID</th>
                                        <th class="th">Posición</th>
                                        <th class="th">Requerimiento</th>
                                        <th>Editar</th>
                                        <th>Borrar</th>
                                    </tr>
                                </thead>
                                <tbody id="offersTableBody">
                                </tbody>
                            </table>
                        </div>
                    </div>        
                </div>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>

        </div>
    </div>
</div>

<!-- Modal List Internship Offers Students-->
<div class="modal fade" id="offersStudentListModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">

                <div class="container">
                    <div class="table-responsive">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <h2>Ofertas para <b>PPS</b></h2>
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='offersStudentTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">Empresa</th>
                                        <th class="th">Posición</th>
                                        <th class="th">Requerimiento</th>
                                        <th>Más información</th>
                                    </tr>
                                </thead>
                                <tbody id="offersStudentTableBody">
                                </tbody>
                            </table>
                        </div>
                    </div>        
                </div>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>

        </div>
    </div>
</div>

<!-- Modal List Applications Business-->
<div class="modal fade" id="appsBListModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">

                <div class="container">
                    <div class="table-responsive">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <h2>Administrar <b>aplicaciones</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='appsBTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">ID de la solicitud</th>
                                        <th class="th">Puesto</th>
                                        <th class="th">Fecha de envio</th>
                                        <th class="th">Estudiante</th>
                                        <th class="th">Universidad</th>
                                        <th class="th">Carrera</th>
                                        <th>Más información</th>
                                        <th>Borrar</th>
                                    </tr>
                                </thead>
                                <tbody id="appsBTableBody">
                                </tbody>
                            </table>
                        </div>
                    </div>        
                </div>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>

        </div>
    </div>
</div>

<!-- Modal List Applications Students-->
<div class="modal fade" id="appsSListModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">

                <div class="container">
                    <div class="table-responsive">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <h2>Administrar <b>aplicaciones enviadas</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='appsSTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">ID de la solicitud</th>
                                        <th class="th">Empresa</th>
                                        <th class="th">Puesto</th>
                                        <th class="th">Fecha de envio</th>
                                        <th>Borrar</th>
                                    </tr>
                                </thead>
                                <tbody id="appsSTableBody">
                                </tbody>
                            </table>
                        </div>
                    </div>        
                </div>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>

        </div>
    </div>
</div>


<!-- ---------------------Modal ADD Admin--------------------- !-->
<!-- Modal Add Offer-->
<div id="addOfferModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Oferta para PPS</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="o_position_add" placeholder="Posición" required="required" >
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="o_description_add" placeholder="Descripción" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="o_perks_add" placeholder="Beneficios" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="o_requirements_add" placeholder="Requerimientos" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='addOfferID' onclick="addNewOffer()">Agregar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>



<!-- ---------------------Modal UPDATE--------------------- !-->
<!-- Modal Update Student-->
<div id="updateStudentModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Perfil</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="e_username_em" placeholder="Usuario" required="required" readonly>
                            <input type="email" class="form-control" id="e_email_em" placeholder="Correo" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input class="form-check-input" type="checkbox" onclick="showPasswordRM()">
                            <input type="password" class="form-control" id="e_password_em" placeholder="Contraseña" required="required" autocomplete="on">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="e_name_em" placeholder="Nombre" required="required">
                            <input type="text" class="form-control" id="e_lastname_em" placeholder="Apellido" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="e_career_em" placeholder="Carrera" required="required">
                            <input type="text" class="form-control" id="e_university_em" placeholder="Universidad" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="e_address_em" placeholder="Dirección" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="date" class="form-control" id="e_dob_em" placeholder="Fecha de nacimiento" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='updateStudentID' onclick="updateStudent()">Actualizar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<!-- Modal Update Offer-->
<div id="updateOfferModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Oferta para PPS</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="o_id_em" placeholder="ID" required="required" readonly>
                            <input type="text" class="form-control" id="e_position_em" placeholder="Posición" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="o_description_em" placeholder="Descripción" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="o_perks_em" placeholder="Beneficios" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="o_requirements_em" placeholder="Requerimientos" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='updateOfferID' onclick="updateOffer()">Actualizar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<!-- Modal Update Business-->
<div id="updateBusinessModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Perfil</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="b_username_em" placeholder="Usuario" required="required" readonly>
                            <input type="email" class="form-control" id="b_email_em" placeholder="Correo" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input class="form-check-input" type="checkbox" onclick="showPasswordRM()">
                            <input type="password" class="form-control" id="b_password_em" placeholder="Contraseña" required="required" autocomplete="on">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="b_name_em" placeholder="Nombre" required="required">
                            <input type="text" class="form-control" id="b_description_em" placeholder="Descripción" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="b_address_em" placeholder="Dirección" required="required">
                            <input type="text" class="form-control" id="b_headquarters_em" placeholder="Headquarters" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="b_website_em" placeholder="Website" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="b_type_em" placeholder="Tipo de empresa o área laboral" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="b_revenue_em" placeholder="Valor en la bolsa" required="required">
                            <input type="text" class="form-control" id="b_size_em" placeholder="Cantidad de empleados" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="b_perks_em" placeholder="Beneficios" required="required">
                            <input type="text" class="form-control" id="b_calification_em" placeholder="Calificación" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='updateBusinessID' onclick="updateBusiness()">Actualizar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>


<!-- ---------------------Modal GET--------------------- !-->
<!-- Modal Get Offer-->
<div id="getOfferModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Oferta para PPS</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="e_business_gm" placeholder="Empresa" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="e_position_gm" placeholder="Posición" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="o_description_gm" placeholder="Descripción" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="o_perks_gm" placeholder="Beneficios" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="o_requirements_gm" placeholder="Requerimientos" readonly>
                        </div>
                    </div>

                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='getOfferID' onclick="sendApplication()">Mandar aplicación</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<!-- Modal Get Student-->
<div id="getStudentModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Estudiante</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="e_name_gm" placeholder="Nombre" readonly>
                            <input type="text" class="form-control" id="e_lastname_gm" placeholder="Apellido" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="e_career_gm" placeholder="Carrera" readonly>
                            <input type="text" class="form-control" id="e_university_gm" placeholder="Universidad" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="e_address_gm" placeholder="Dirección" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="date" class="form-control" id="e_dob_gm" placeholder="Fecha de nacimiento" readonly>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div class="form-group">
                    <button type="button" class="btn btn-primary btn-block btn-lg" onclick="requestCV()">Solicitar currículum</button>
                </div>
            </div>
        </div>
    </div>
</div>