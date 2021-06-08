/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// All onload functions
window.onload = function () {

// Reset modals
    $(".modal").on("hidden.bs.modal", function () {
        $(this).find('form').trigger("reset");
    });

// Hide previous modal

/*
    $('#updatePassangerAdmin').on('click', function () {
        $('.modal').modal('hide')
    });
*/

// Add header
    document.getElementById("navbar").innerHTML = "   <nav class='navbar navbar-expand-lg navbar-light fixed-top' id='mainNav'>" +
            "       <div class='container'>" +
            "           <a class='navbar-brand js-scroll-trigger' href='#page-top'>DREAMCATCHERS</a>" +
            "           <button class='navbar-toggler navbar-toggler-right' type='button' data-toggle='collapse' data-target='#navbarResponsive' aria-controls='navbarResponsive' aria-expanded='false' aria-label='Toggle navigation'>" +
            "               Menu" +
            "               <i class='fas fa-bars'></i>" +
            "           </button>" +
            "           <div class='collapse navbar-collapse' id='navbarResponsive'>" +
            "               <ul class='navbar-nav ml-auto'>" +
            "                   <li class='nav-item'><a class='nav-link js-scroll-trigger' href='#about'>Acerca de</a></li>" +
            "                   <li class='nav-item'><a class='nav-link js-scroll-trigger' href='#signup'>Contacto</a></li>" +
            "                   <li class='nav-item'>" +
            (
                    window.sessionStorage.user === undefined ?
                    "                       <a class='nav-link js-scroll-trigger'  href='#registerModal'data-toggle='modal'>Registro</a></li>" :
                    "                       <a class='nav-link js-scroll-trigger'  href='#updatePassangerModal'data-toggle='modal' onclick='getPassanger()'>Perfil</a></li>"
                    ) +
            (
                    window.sessionStorage.role === '0' ?
                    "                   <li class='nav-item dropdown'>" +
                    "                       <a class='nav-link dropdown-toggle' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Herramientas de usuario</a>" +
                    "                       <div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>" +
                    "                           <a class='dropdown-item' href='#flightsSearchModal' class='trigger-btn' data-toggle='modal' onclick='showListFlightsClient()'>Comprar ticket de vuelo</a>" +
                    "                           <a class='dropdown-item' href='#flightsClientTickets' class='trigger-btn' data-toggle='modal' onclick='showListTicketsClient()'>Tiquetes comprados</a>" +
                    "                       </div>" +
                    "                   </li>"
                    :
                    "") +
            (
                    window.sessionStorage.role === '1' ?
                    "                   <li class='nav-item dropdown'>" +
                    "                       <a class='nav-link dropdown-toggle' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Herramientas de administrador</a>" +
                    "                       <div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>" +
                    "                           <a class='dropdown-item' href='#flightsAdminFlights' class='trigger-btn' data-toggle='modal' onclick='showListFlightsAdmin()'>Administrar vuelos</a>" +
                    "                           <a class='dropdown-item' href='#flightsAdminRoutes' class='trigger-btn' data-toggle='modal' onclick='showListRoutesAdmin()'>Administrar rutas</a>" +
                    "                           <a class='dropdown-item' href='#flightsAdminAirplanes' class='trigger-btn' data-toggle='modal' onclick='showListAirplanesAdmin()'>Administrar aviones</a>" +
                    "                           <a class='dropdown-item' href='#flightsAdminSchedules' class='trigger-btn' data-toggle='modal' onclick='showListSchedulesAdmin()'>Administrar horarios</a>" +
                    "                           <a class='dropdown-item' href='#flightsAdminPassangers' class='trigger-btn' data-toggle='modal' onclick='showListPassangersAdmin()'>Administrar pasajeros</a>" +
                    "                           <a class='dropdown-item' href='#flightsAdminTickets' class='trigger-btn' data-toggle='modal' onclick='showListTicketsAdmin()'>Administrar ticketes</a>" +
                    "                       </div>" +
                    "                   </li>"
                    :
                    "") +
            "                   <li class='nav-item'>" +
            (
                    window.sessionStorage.user === undefined ?
                    "<a class='nav-link js-scroll-trigger' href='#loginModal' class='trigger-btn' data-toggle='modal'>Ingresar</a></li>" :
                    "<a class='nav-link js-scroll-trigger' onclick='logout()' class='trigger-btn'>Cerrar sesión</a></li>"
                    ) +
            "               </ul>" +
            "           </div>" +
            "       </div>" +
            "   </nav>"



    if ($("#registerModal").length > 0) {
        $("#registerModal").on("click", function () {
            bootstrapValidate(
                    '#email_rm',
                    'email:Formato de e-mail incorrecto.'
                    );
            bootstrapValidate(
                    ['#name_rm', '#lastname_rm'],
                    'alpha:Solo se permiten letras.'
                    );
            bootstrapValidate(
                    '#password_rm',
                    'min:8:Contraseña debe tener al menos 8 caracteres.'
                    );
            bootstrapValidate(
                    ['#work_phone_rm'],
                    'max:8:No puede exeder los 8 caracteres.'
                    );
            bootstrapValidate(
                    ['#work_phone_rm'],
                    'min:8:No puede tener menos de 8 caracteres.'
                    );
            bootstrapValidate(
                    ['#cell_phone_rm'],
                    'max:8:No puede exeder los 8 caracteres.'
                    );
            bootstrapValidate(
                    ['#cell_phone_rm'],
                    'min:8:No puede tener menos de 8 caracteres.'
                    );
        });

        if ($("#loginModal").length > 0) {
            $("#loginModal").on("click", function () {
                bootstrapValidate(
                        '#password',
                        'min:8:Contraseña debe tener al menos 8 caracteres.'
                        );
            });
        }
    }
    
    

/*
    $("#airplanesAdminTable").on('click', ".airplanesAdminEdit", (function (ele) {
        var tr = ele.target.parentNode.parentNode;
        getAirplane(tr.cells[0].textContent);

    }));    
    */
}


// Email verification
function isEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}

/*!
 * Start Bootstrap - Grayscale v6.0.3 (https://startbootstrap.com/theme/grayscale)
 * Copyright 2013-2020 Start Bootstrap
 * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-grayscale/blob/master/LICENSE)
 */
(function ($) {
    "use strict"; // Start of use strict

    // Smooth scrolling using jQuery easing
    $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function () {
        if (
                location.pathname.replace(/^\//, "") ==
                this.pathname.replace(/^\//, "") &&
                location.hostname == this.hostname
                ) {
            var target = $(this.hash);
            target = target.length
                    ? target
                    : $("[name=" + this.hash.slice(1) + "]");
            if (target.length) {
                $("html, body").animate(
                        {
                            scrollTop: target.offset().top - 70,
                        },
                        1000,
                        "easeInOutExpo"
                        );
                return false;
            }
        }
    });

    // Closes responsive menu when a scroll trigger link is clicked
    $(".js-scroll-trigger").click(function () {
        $(".navbar-collapse").collapse("hide");
    });

    // Activate scrollspy to add active class to navbar items on scroll
    $("body").scrollspy({
        target: "#mainNav",
        offset: 100,
    });

    // Collapse Navbar
    var navbarCollapse = function () {
        if ($("#mainNav").offset().top > 100) {
            $("#mainNav").addClass("navbar-shrink");
        } else {
            $("#mainNav").removeClass("navbar-shrink");
        }
    };
    // Collapse now if page is not at top
    navbarCollapse();
    // Collapse the navbar when page is scrolled
    $(window).scroll(navbarCollapse);
})(jQuery); // End of use strict

function showPassword() {
    var x = document.getElementById("password");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}

function showPasswordRM() {
    var x = document.getElementById("password_rm");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}

/*-------------------------------------------------------*/

/* Ajax functions */


// Login to system
function logIn() {
    var user = document.getElementById("user").value;
    var password = document.getElementById("password").value;

    var jsonUser = {
        "user": user,
        "password": password,
    }


    $.ajax({
        url: 'servletLogin/in',
        data: jsonUser,
        type: 'post',
        cache: false,
        success: function (data) {
            if (data["user"] != undefined) {
                window.sessionStorage.main = JSON.stringify(data["user"])
                window.sessionStorage.user = data["user"]["username"]
                window.sessionStorage.password = data["user"]["password"]
                window.sessionStorage.role = data["user"]["rol"] ? "1" : "0"
                window.location.replace("presentation/idle.jsp");
            } else {
                jQuery("#error-text").html('<p style="font-size:25px;" class="text-center">Contraseña incorrecta.</p>');
                jQuery("#errorModal").modal('show');
                $("#errorModal").on("hidden.bs.modal", function () {
                    $('#loginModal').find('form').trigger('reset');
                });
            }
        },
        error: function () {
            jQuery("#error-text").html('<p style="font-size:25px;" class="text-center">Ese usuario no existe.</p>');
            jQuery("#errorModal").modal('show');
            $("#errorModal").on("hidden.bs.modal", function () {
                $('#loginModal').find('form').trigger('reset');
            });
        }
    }
    );
}
// Logout of system
function logout() {
    window.sessionStorage.removeItem("main");
    window.sessionStorage.removeItem("user");
    window.sessionStorage.removeItem("password");
    window.sessionStorage.removeItem("role");
    window.location.replace("/lab01_frontend1");
}


// Register new user 
function addNewUser() {
    var user_username_rm = document.getElementById("user_username_rm").value;
    var email_rm = document.getElementById("email_rm").value;
    var password_rm = document.getElementById("password_rm").value;
    var name_rm = document.getElementById("name_rm").value;
    var lastname_rm = document.getElementById("lastname_rm").value;
    var work_phone_rm = document.getElementById("work_phone_rm").value;
    var cell_phone_rm = document.getElementById("cell_phone_rm").value;
    var address_rm = document.getElementById("address_rm").value;
    var dob_rm = document.getElementById("dob_rm").value;

    var jsonUser = {
        "user_name": user_username_rm,
        "password": password_rm,
        "name_": name_rm,
        "lastname": lastname_rm,
        "email": email_rm,
        "bob": dob_rm,
        "address": address_rm,
        "work_phone": work_phone_rm,
        "cell_phone": cell_phone_rm
    }

    $.ajax({
        url: "/lab01_frontend1/servletInsert/registro",
        method: "POST",
        data: jsonUser,
        success: function (data) {
            jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Perfil creado satisfactoriamente.</p>');
            jQuery("#successModal").modal('show');
            $("#successModal").on("hidden.bs.modal", function () {
                $('#registerModal').modal('hide')
            });
        },
        error: function () {
            alert("algo salio mal");
        }
    });
}
// Get Passanger
function getPassanger() {
    var main = JSON.parse(window.sessionStorage.main);
    $.ajax({
        url: '/lab01_frontend1/servletSearch/passenger',
        data: main,
        type: 'post',
        cache: false,
        success: function (data) {
            fillWithInformation(data, 1)
        },
        error: function () {
            jQuery("#error-text").html('<p style="font-size:25px;" class="text-center">Error con los datos.</p>');
            jQuery("#errorModal").modal('show');
        }
    }
    );
}
// Update Passanger
function updatePassanger() {

    var user_username_rm = document.getElementById("p_username_em").value;
    var email_rm = document.getElementById("p_email_em").value;
    var password_rm = document.getElementById("p_password_em").value;
    var name_rm = document.getElementById("p_name_em").value;
    var lastname_rm = document.getElementById("p_lastname_em").value;
    var work_phone_rm = document.getElementById("p_work_phone_em").value;
    var cell_phone_rm = document.getElementById("p_cell_phone_em").value;
    var address_rm = document.getElementById("p_address_em").value;
    var dob_rm = document.getElementById("p_dob_em").value;
    var role_rm = window.sessionStorage.getItem("role");

    console.log(dob_rm)

    var jsonUser = {
        "user_name": user_username_rm,
        "password": password_rm,
        "name_": name_rm,
        "lastname": lastname_rm,
        "email": email_rm,
        "bob": dob_rm,
        "address": address_rm,
        "work_phone": work_phone_rm,
        "cell_phone": cell_phone_rm,
        "role": role_rm
    }

    $.ajax({
        url: "/lab01_frontend1/servletUpdate/registro",
        method: "POST",
        data: jsonUser,
        success: function (data) {
            jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Perfil actualizado satisfactoriamente.</p>');
            jQuery("#successModal").modal('show');
            $("#successModal").on("hidden.bs.modal", function () {
                $('#updatePassangerModal').modal('hide')
            });
        },
        error: function () {
            alert("algo salio mal");
        }
    });


}
// Fill rows with info
function fillWithInformation(data, i) {
    switch (i) {
        case 1:
        {
            // Passangers
            var a = new Date(data['passanger']['dob']);
            a.setDate(a.getDate() + 1)
            console.log(data['passanger']['dob']);
            document.getElementById("p_username_em").value = data['passanger']['user_username'];
            document.getElementById("p_email_em").value = data['passanger']['email'];
            document.getElementById("p_password_em").value = window.sessionStorage.getItem("password")
            document.getElementById("p_name_em").value = data['passanger']['name'];
            document.getElementById("p_lastname_em").value = data['passanger']['lastname'];
            document.getElementById("p_work_phone_em").value = data['passanger']['work_phone'];
            document.getElementById("p_cell_phone_em").value = data['passanger']['cell_phone'];
            document.getElementById("p_address_em").value = data['passanger']['address'];
            document.getElementById("p_dob_em").value = a.toISOString().substring(0, 10);
            break;
        }
    }
}
// List
function showListPassangersAdmin() {
    $.ajax({
        type: 'GET',
        url: '/lab01_frontend1/servletList/passengerList',
        cache: false,
        success: function (data) {
            //alert(JSON.stringify(data));
            list(data, 5);
            $(document).ready(function () {
                $('#flightsAdminPassangersTable').DataTable({
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
                    },
                    retrieve: true
                })
            });
        },
        error: function () {
            alert('error');
        },
        fail: function () {
            alert("fail")
        }
    })
}
//Create list
function list(data, i) {
    switch (i) {
        case 5:
        {
            var listado = document.getElementById("passangersAdminTable");
            listado.innerHTML = "";
            data["passengerList"].forEach((u) => {
                row(u, 5);
            });
            break;
        }
    }
}
// Add rows to table
function row(data, i) {
    if (data) {
        var tr = '<tr>';
        switch (i) {
            case 5:
            {
                tr += '<td>' + data.user_username + '</td>';
                tr += '<td>' + data.name + '</td>';
                tr += '<td>' + data.lastname + '</td>';
                tr += '<td>' + data.email + '</td>';
                tr += '<td>' + data.dob + '</td>';
                tr += '<td>' + data.address + '</td>';
                tr += '<td>' + data.work_phone + '</td>';
                tr += '<td>' + data.cell_phone + '</td>';
                tr += '<td><button class="passangerAdminEdit" href="#updatePassangerModal" class="trigger-btn" data-toggle="modal">Editar</button></td>';
                tr += '<td><button class="passangerAdminDelete" class="trigger-btn" data-toggle="modal" onclick="deletePassanger(' + "\'" + data.user_username + "\'" + ')">Borrar</button></td>';
                tr += '</tr>';
                $('#passangersAdminTable').append(tr);
                break;
            }
        }
    }
}
// Delete
function deletePassanger(id) {
    var jsonUser = {
        "id": id,
    }
    
    console.log(jsonUser)
    $.ajax({
        url: "/lab01_frontend1/servletDelete/registro",
        method: "POST",
        data: jsonUser,
        success: function (data) {
            if (data.delete) {
                jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Pasajero eliminado satisfactoriamente.</p>');
                $('#flightsAdminPassangers').modal('hide')
                jQuery("#successModal").modal('show');
            } else {
                jQuery("#error-text").html('<p style="font-size:25px;" class="text-center">Este pasajero tiene tickets asociados. No se puede eliminar.</p>');
                $('#flightsAdminPassangers').modal('hide')
                jQuery("#errorModal").modal('show');
            }
        },
        error: function () {
            alert("algo salio mal");
        }
    });
}
