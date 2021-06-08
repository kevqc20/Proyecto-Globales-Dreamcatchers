<%-- 
    Document   : modals
    Author     : KEVIN
--%>

<!-- Modal Login -->
<div id="loginModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Iniciar Sesi�n</h4>
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
                            <input type="password" class="form-control" id="password" placeholder="Contrase�a" required="required" autocomplete="on">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='login' onclick="logIn()">Acceder</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">�No tienes cuenta? <a href='#registerModal' data-toggle='modal' id="reMod2">Reg�strate</a></div>
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
                            <input type="email" class="form-control" id="email_rm" placeholder="Correo" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <input class="form-check-input" type="checkbox" onclick="showPasswordRM()">
                            <input type="password" class="form-control" id="password_rm" placeholder="Contrase�a" required="required" autocomplete="on">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="name_rm" placeholder="Nombre" required="required">
                            <input type="text" class="form-control" id="lastname_rm" placeholder="Apellido" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="work_phone_rm" placeholder="Tel�fono de trabajo" required="required">
                            <input type="number" class="form-control" id="cell_phone_rm" placeholder="Tel�fono personal" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="address_rm" placeholder="Direcci�n" required="required">
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
            <div class="modal-footer">�Ya tienes cuenta? <a href='#loginModal' data-toggle='modal' id="logMod">Inicia sesi�n</a></div>
        </div>
    </div>
</div>

<!-- Modal List Tickets clients-->
<div class="modal fade" id="flightsClientTickets">
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
                                        <h2>Administrar <b>tickets</b></h2>
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='flightsClientTicketsTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">ID</th>
                                        <th class="th">ID vuelo</th>
                                        <th class="th">Precio</th>
                                        <th class="th">Descuento</th>
                                        <th class="th">Asiento</th>
                                        <th class="th">Usuario</th>
                                    </tr>
                                </thead>
                                <tbody id="ticketsClientTable">
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

<!-- Modal Success -->
<div id="successModal" class="modal fade">
    <div class="modal-dialog modal-confirm">
        <div class="modal-content">
            <div class="modal-header">
                <div class="icon-box">
                    <i class="material-icons">&#xE876;</i>
                </div>				
                <h4 class="modal-title w-100">�Listo!</h4>	
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
                <h4 class="modal-title w-100">�Lo sentimos!</h4>	
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

<!-- User -->
<!-- Modal List Flights for user-->
<div class="modal fade" id="flightsSearchModal">
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
                                        <h2>Vuelos <b>disponibles</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='fligthsSearch' style="width:100%">
                                <thead>
                                    <tr>
                                        <!-- Hay que poner estas  
                                        
                                        <th>Acciones</th>
                                        -->
                                        <th class="th">ID</th>
                                        <th class="th">Destino</th>
                                        <th class="th">Origen</th>
                                        <th class="th">Fecha de salida</th>
                                        <th>Compra</th>
                                    </tr>
                                </thead>
                                <tbody id="flightsAvailable">

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

<!-- Modal Checkout-->
<div class="modal fade" id="checkoutModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="background: rgba(42, 43, 55, 1)">

            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">

                <div class="content">
                    <div id="seat-map" style="float:left">
                        <div class="front-indicator" style="margin-bottom: 15px">Frente del avion</div>
                    </div>
                    <div id="legend"></div>

                    <div class="booking-details" style="float:right">
                        <h2>Detalle de compra</h2>
                        <h3>Asientos seleccionados (<span id="counter">0</span>):</h3>
                        <ul id="selected-seats">
                        </ul>
                        Total: <b>$<span id="total">0</span></b>
                        <button class="checkout-button" onclick="checkout()">Checkout &raquo;</button>  
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


<!-- ---------------------Modal LIST--------------------- -->
<!-- Admin -->
<!-- Modal List flightsAdminFlights-->
<div class="modal fade" id="flightsAdminFlights">
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
                                        <h2>Administrar <b>vuelos</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                    <div class="col-sm-4">
                                        <a href='#registerFlightModal' data-toggle='modal' class="btn btn-success" id=''><i class="material-icons">&#xE147;</i> <span>Agregar nuevo vuelo</span></a>						
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='flightsAdminFlightsTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">ID</th>
                                        <th class="th">Destino</th>
                                        <th class="th">Origen</th>
                                        <th class="th">Fecha de salida</th>
                                        <th>Editar</th>
                                        <th>Borrar</th>
                                    </tr>
                                </thead>
                                <tbody id="flightsAdminTable">
                                    <!--
                                    <tr>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>Mark</td>
                                        <td><button class="flightsAdminEdit" href="#updateFlightModal" class="trigger-btn" data-toggle="modal">Editar</button></td>
                                        <td><button class="flightsAdminDelete" href="#flightDeleteModal" class="trigger-btn" data-toggle="modal">Borrar</button></td>
                                    </tr> 
                                    -->
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

<!-- Modal List flightsAdminRoutes-->
<div class="modal" id="flightsAdminRoutes">
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
                                        <h2>Administrar <b>rutas</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                    <div class="col-sm-4">
                                        <a href='#registerRouteModal' data-toggle='modal' class="btn btn-success" id=''><i class="material-icons">&#xE147;</i> <span>Agregar nueva ruta</span></a>						
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='flightsAdminRoutesTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">ID</th>
                                        <th class="th">Origen</th>
                                        <th class="th">Destino</th>
                                        <th class="th">Duracion</th>
                                        <th>Editar</th>
                                        <th>Borrar</th>
                                    </tr>
                                </thead>
                                <tbody id="routesAdminTable">
                                    <!--
                                    <tr>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>Mark</td>
                                        <td><button class="routesAdminEdit" href="#updateRouteModal" class="trigger-btn" data-toggle="modal">Editar</button></td>
                                        <td><button class="routesAdminDelete" href="#routeDeleteModal" class="trigger-btn" data-toggle="modal">Borrar</button></td>
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

<!-- Modal List flightsAdminAirplanes-->
<div class="modal fade" id="flightsAdminAirplanes">
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
                                        <h2>Administrar <b>aviones</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                    <div class="col-sm-4">
                                        <a href='#registerAirplaneModal' data-toggle='modal' class="btn btn-success" id=''><i class="material-icons">&#xE147;</i> <span>Agregar nuevo avion</span></a>						
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='flightsAdminAirplanesTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">ID</th>
                                        <th class="th">A�o</th>
                                        <th class="th">Modelo</th>
                                        <th class="th">Marca</th>
                                        <th class="th">Tipo</th>
                                        <th class="th">Capacidad maxima</th>
                                        <th>Editar</th>
                                        <th>Borrar</th>
                                    </tr>
                                </thead>
                                <tbody id="airplanesAdminTable">
                                    <!--
                                    <tr>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>Mark</td>
                                        <td>@mdo</td>
                                        <td>Mark</td>
                                        <td><button class="airplanesAdminEdit" href="#updateAirplaneModal" class="trigger-btn" data-toggle="modal">Editar</button></td>
                                        <td><button class="airplanesAdminDelete" href="#airplaneDeleteModal" class="trigger-btn" data-toggle="modal">Borrar</button></td>
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

<!-- Modal List flightsAdminSchedules-->
<div class="modal fade" id="flightsAdminSchedules">
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
                                        <h2>Administrar <b>horarios</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                    <div class="col-sm-4">
                                        <a href='#registerScheduleModal' data-toggle='modal' class="btn btn-success" id=''><i class="material-icons">&#xE147;</i> <span>Agregar nuevo horario</span></a>						
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='flightsAdminSchedulesTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">ID</th>
                                        <th class="th">Fecha</th>
                                        <th>Editar</th>
                                        <th>Borrar</th>
                                    </tr>
                                </thead>
                                <tbody id="schedulesAdminTable">
                                    <!--
                                    <tr>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td><button class="schedulesAdminEdit" href="#updateScheduleModal" class="trigger-btn" data-toggle="modal">Editar</button></td>
                                        <td><button class="schedulesAdminDelete" href="#scheduleDeleteModal" class="trigger-btn" data-toggle="modal">Borrar</button></td>
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

<!-- Modal List flightsAdminTickets-->
<div class="modal fade" id="flightsAdminTickets">
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
                                        <h2>Administrar <b>tickets</b></h2>
                                    </div>
                                    <div class="col-sm-4">
                                    </div>
                                    <div class="col-sm-4">
                                        <a href='#registerTicketModal' data-toggle='modal' class="btn btn-success" id=''><i class="material-icons">&#xE147;</i> <span>Agregar nuevo ticket</span></a>						
                                    </div>
                                </div>
                            </div>
                            <table class="table-dark table-striped table-bordered" id='flightsAdminTicketsTable' style="width:100%">
                                <thead>
                                    <tr>
                                        <th class="th">ID</th>
                                        <th class="th">ID vuelo</th>
                                        <th class="th">Precio</th>
                                        <th class="th">Asiento</th>
                                        <th class="th">Usuario</th>
                                        <th>Editar</th>
                                        <th>Borrar</th>
                                    </tr>
                                </thead>
                                <tbody id="ticketsAdminTable">
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

<!-- Modal Register Airplane-->
<div id="registerAirplaneModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Avion</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="ap_id_add" placeholder="ID" required="required" >
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="ap_year_add" placeholder="A�o" required="required"  >
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="ap_model_add" placeholder="Modelo" required="required">
                            <input type="text" class="form-control" id="ap_brand_add" placeholder="Marca" required="required">
                            <input type="number" min="0" max="1" class="form-control" id="ap_type_add" placeholder="Tipo" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="ap_cantmax_add" placeholder="Capacidad maxima" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='registerAirplaneB' onclick="addNewAirplane()">Registrar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<!-- Modal Register Flight-->
<div id="registerFlightModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Vuelo</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="f_id_add" placeholder="ID" required="required" >
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="f_rid_add" placeholder="ID de ruta" required="required">
                            <input type="text" class="form-control" id="f_apid_add" placeholder="ID de avion" required="required">
                            <input type="text" class="form-control" id="f_schid_add" placeholder="ID de horario" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='registerFlightB' onclick="addNewFlight()">Registrar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

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
                            <input type="password" class="form-control" id="p_password_add" placeholder="Contrase�aaaaaaa" required="required"  >
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
                            <input type="number" class="form-control" id="p_work_phone_add" placeholder="Tel�fono de trabajo" required="required">
                            <input type="number" class="form-control" id="p_cell_phone_add" placeholder="Tel�fono personal" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="p_address_add" placeholder="Direcci�n" required="required">
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

<!-- Modal Register Route-->
<div id="registerRouteModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Ruta</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="rt_id_add" placeholder="ID" required="required" >
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="rt_origin_add" placeholder="Origen" required="required">
                            <input type="text" class="form-control" id="rt_destination_add" placeholder="Destino" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="rt_duration_add" placeholder="Duracion" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='registerRouteB' onclick="addNewRoute()">Registrar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<!-- Modal Register Schedule-->
<div id="registerScheduleModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Horario</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="sh_id_add" placeholder="ID" required="required" >
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="datetime-local" class="form-control" id="sh_datetime_add" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='registerScheduleB' onclick="addNewShedule()">Registrar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<!-- Modal Register Ticket-->
<div id="registerTicketModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Ticket</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="tk_id_add" placeholder="ID" required="required" >
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="tk_fid_add" placeholder="ID vuelo" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="tk_price_phone_add" placeholder="Precio neto" required="required">
                            <input type="number" class="form-control" id="tk_discount_phone_add" placeholder="Descuento" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="tk_seat_add" placeholder="Asiento" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="tk_user_add" placeholder="Usuario" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='registerTicketB' onclick="addNewTicket()">Registrar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>


<!-- ---------------------Modal UPDATE--------------------- !-->

<!-- Modal Update Airplane-->
<div id="updateAirplaneModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Avion</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="ap_id_em" placeholder="ID" required="required" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="ap_year_em" placeholder="A�o" required="required" autocomplete="on">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="ap_model_em" placeholder="Modelo" required="required">
                            <input type="text" class="form-control" id="ap_brand_em" placeholder="Marca" required="required">
                            <input type="number" min="0" max="1" class="form-control" id="ap_type_em" placeholder="Tipo" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="ap_cantmax_em" placeholder="Capacidad maxima" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='updateAirplaneB' onclick="updateAirplane()">Actualizar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<!-- Modal Update Flight-->
<div id="updateFlightModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Vuelo</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="f_id_em" placeholder="ID" required="required" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="f_rid_em" placeholder="ID de ruta" required="required">
                            <input type="text" class="form-control" id="f_apid_em" placeholder="ID de avion" required="required">
                            <input type="text" class="form-control" id="f_schid_em" placeholder="ID de horario" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='updateFlightB' onclick="updateFlight()">Actualizar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

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
                            <input type="password" class="form-control" id="p_password_em" placeholder="Contrase�aaaaaaa" required="required" autocomplete="on">
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
                            <input type="number" class="form-control" id="p_work_phone_em" placeholder="Tel�fono de trabajo" required="required">
                            <input type="number" class="form-control" id="p_cell_phone_em" placeholder="Tel�fono personal" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="p_address_em" placeholder="Direcci�n" required="required">
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

<!-- Modal Update Route-->
<div id="updateRouteModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Ruta</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="rt_id_em" placeholder="ID" required="required" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="rt_origin_em" placeholder="Origen" required="required">
                            <input type="text" class="form-control" id="rt_destination_em" placeholder="Destino" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="rt_duration_em" placeholder="Duracion" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='updateRouteB' onclick="updateRoute()">Actualizar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<!-- Modal Update Schedule-->
<div id="updateScheduleModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Horario</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="sh_id_em" placeholder="ID" required="required" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="datetime-local" class="form-control" id="sh_datetime_em" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='updateScheduleB' onclick="updateSchedule()">Actualizar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>

<!-- Modal Update Ticket-->
<div id="updateTicketModal" class="modal fade">
    <div class="modal-dialog modal-login">
        <div class="modal-content">
            <div class="modal-header">				
                <h4 class="modal-title">Ticket</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="tk_id_em" placeholder="ID" required="required" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="tk_fid_em" placeholder="ID vuelo" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="number" class="form-control" id="tk_price_phone_em" placeholder="Precio neto" required="required">
                            <input type="number" class="form-control" id="tk_discount_phone_em" placeholder="Descuento" required="required">
                            <input type="number" class="form-control" id="tk_finalprice_em" placeholder="Precio final" required="required" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="tk_seat_em" placeholder="Asiento" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" id="tk_user_em" placeholder="Usuario" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block btn-lg" id='updateTicketB' onclick="updateTicket()">Actualizar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>







<script>
    var firstSeatLabel = 1;
    var flight_id = '';
    var seat_array = [];
    var scMap;
    $(document).ready(function () {
        var $cart = $('#selected-seats'),
                $counter = $('#counter'),
                $total = $('#total'),
                sc = $('#seat-map').seatCharts({
            map: [
                'ff_ff',
                'ff_ff',
                'ee_ee',
                'ee_ee',
                'ee_ee',
                'ee_ee',
                'ee_ee',
            ],
            seats: {
                f: {
                    price: 100,
                    classes: 'first-class', //your custom CSS class
                    category: 'Primera clase'
                },
                e: {
                    price: 40,
                    classes: 'economy-class', //your custom CSS class
                    category: 'Clase economica'
                }

            },
            naming: {
                top: true,
                left: true,
                getId: function (character, row, column) {
                    return row + '_' + column;
                },
                getLabel: function (character, row, column) {
                    return column;
                }
            },
            legend: {
                node: $('#legend'),
                items: [
                    ['f', 'available', '-> Primera clase'],
                    ['e', 'available', '-> Clase economica'],
                    ['f', 'unavailable', '-> Ya apartado']
                ]
            },
            click: function () {
                if (this.status() == 'available') {
                    //let's create a new <li> which we'll add to the cart items
                    $('<li>' + this.data().category + ' Asiento # ' + this.settings.label + ': <b>$' + this.data().price + '</b> <a href="#" class="cancel-cart-item">[cancel]</a></li>')
                            .attr('id', 'cart-item-' + this.settings.id)
                            .data('seatId', this.settings.id)
                            .appendTo($cart);
                    /*
                     * Lets up<a href="https://www.jqueryscript.net/time-clock/">date</a> the counter and total
                     *
                     * .find function will not find the current seat, because it will change its stauts only after return
                     * 'selected'. This is why we have to add 1 to the length and the current seat price to the total.
                     */
                    $counter.text(sc.find('selected').length + 1);
                    $total.text(recalculateTotal(sc) + this.data().price);
                    var a = {"id": this.settings.id, "number": getNumber(this.settings.id), "price": this.data().price}
                    seat_array.push(a);
                    return 'selected';
                } else if (this.status() == 'selected') {
                    //update the counter
                    $counter.text(sc.find('selected').length - 1);
                    //and total
                    $total.text(recalculateTotal(sc) - this.data().price);
                    //remove the item from our cart
                    seat_array = delete_seat(this.settings.id);
                    $('#cart-item-' + this.settings.id).remove();
                    //seat has been vacated

                    return 'available';
                } else if (this.status() == 'unavailable') {
                    //seat has' been already booked
                    return 'unavailable';
                } else {
                    return this.style();
                }
            }
        });
        scMap = sc;
        //this will handle "[cancel]" link clicks
        $('#selected-seats').on('click', '.cancel-cart-item', function () {
            //let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
            sc.get($(this).parents('li:first').data('seatId')).click();
        });
    });
    function recalculateTotal(sc) {
        var total = 0;
        //basically find every selected seat and sum its price
        sc.find('selected').each(function () {
            total += this.data().price;
        });
        return total;
    }
    function delete_seat(seatId) {
        var array = [];
        seat_array.forEach(function (dato) {
            if (dato.id != seatId) {
                array.push(dato);
            }
        });
        return array;
    }
    function getNumber(id) {
        a = id[0] + id[2];
        return a;
    }
    function flight_id_set(id) {
        flight_id = id;
        console.log(id)
        charge_seats();
    }
    function checkout() {
        if (seat_array.length > 0) {
            addNewTicketArray(flight_id, 0, seat_array);
        } else {
            alert("seleccione un asiento");
        }
    }
    function charge_seats() {
        clear_map();
        flighTickets(flight_id, scMap);
    }

    function clear_map() {
        scMap.find('unavailable').status('available');
        scMap.find('selected').status('available');
    }
    function set_unavailable(seat){
        scMap.get(seat).status('unavailable');
    }
</script>