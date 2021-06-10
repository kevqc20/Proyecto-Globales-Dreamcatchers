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
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='register' onclick="addNewUser()">Registrarse</button>
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


<!-- ---------------------Modal LIST--------------------- -->
<!-- Modal List flightsAdminPassangers-->
<div class="modal fade" id="flightsAdminPassangers">
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
                                        <h2>Administrar <b>pasajeros</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                    <div class="col-sm-4">
                                        <a href='#registerPassangerModal' data-toggle='modal' class="btn btn-success" id=''><i class="material-icons">&#xE147;</i> <span>Agregar nuevo pasajero</span></a>						
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='flightsAdminPassangersTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">Usuario</th>
                                        <th class="th">Nombre</th>
                                        <th class="th">Apellidos</th>
                                        <th class="th">Correo</th>
                                        <th class="th">Fecha de nacimiento</th>
                                        <th class="th">Direccion</th>
                                        <th class="th">Telefono trabajo</th>
                                        <th class="th">Telefono celular</th>
                                        <th>Editar</th>
                                        <th>Borrar</th>
                                    </tr>
                                </thead>
                                <tbody id="passangersAdminTable">
                                    <!--
                                    <tr>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>Mark</td>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>Mark</td>                           
                                        <td>Otto</td>
                                        <td><button class="passangerAdminEdit" href="#updatePassangerModal" class="trigger-btn" data-toggle="modal">Editar</button></td>
                                        <td><button class="passangerAdminDelete" href="#passangerDeleteModal" class="trigger-btn" data-toggle="modal">Borrar</button></td>
                                    </tr>
                                    !-->
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


<!-- ---------------------Modal REGISTER--------------------- !-->
<!-- Modal Register Passanger-->
<div id="registerPassangerModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Pasajero</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="p_username_add" placeholder="Usuario" required="required" >
                            <input type="email" class="form-control" id="p_addail_add" placeholder="Correo" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input class="form-check-input" type="checkbox" onclick="showPasswordRM()">
                            <input type="password" class="form-control" id="p_password_add" placeholder="Contraseñaaaaaaa" required="required"  >
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="p_name_add" placeholder="Nombre" required="required">
                            <input type="text" class="form-control" id="p_lastname_add" placeholder="Apellido" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="p_work_phone_add" placeholder="Teléfono de trabajo" required="required">
                            <input type="number" class="form-control" id="p_cell_phone_add" placeholder="Teléfono personal" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="p_address_add" placeholder="Dirección" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="date" class="form-control" id="p_dob_add" placeholder="Fecha de nacimiento" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='registerPassangerAdmin' onclick="addNewUserAdmin()">Registrar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<!-- ---------------------Modal UPDATE--------------------- !-->
<!-- Modal Update Passanger-->
<div id="updatePassangerModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Pasajero</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="p_username_em" placeholder="Usuario" required="required" readonly>
                            <input type="email" class="form-control" id="p_email_em" placeholder="Correo" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input class="form-check-input" type="checkbox" onclick="showPasswordRM()">
                            <input type="password" class="form-control" id="p_password_em" placeholder="Contraseñaaaaaaa" required="required" autocomplete="on">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="p_name_em" placeholder="Nombre" required="required">
                            <input type="text" class="form-control" id="p_lastname_em" placeholder="Apellido" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="p_work_phone_em" placeholder="Teléfono de trabajo" required="required">
                            <input type="number" class="form-control" id="p_cell_phone_em" placeholder="Teléfono personal" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="p_address_em" placeholder="Dirección" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="date" class="form-control" id="p_dob_em" placeholder="Fecha de nacimiento" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='updatePassangerAdmin' onclick="updatePassanger()">Actualizar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>



