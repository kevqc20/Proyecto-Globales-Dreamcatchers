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
                    ""
                    ) +
            (
                    window.sessionStorage.role === '0' ?
                    "                       <a class='nav-link js-scroll-trigger'  href='#updateStudentModal'data-toggle='modal' onclick='getStudent()'>Perfil</a></li>" +
                    "                   <li class='nav-item dropdown'>" +
                    "                       <a class='nav-link dropdown-toggle' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Herramientas</a>" +
                    "                       <div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>" +
                    "                           <a class='dropdown-item' href='#membershipModal' class='trigger-btn' data-toggle='modal'>Ver membresías</a>" +
                    "                           <a class='dropdown-item' href='#cvSendModal1' class='trigger-btn' data-toggle='modal'>Subir currículum</a>" +
                    "                           <a class='dropdown-item' href='#offersStudentListModal' class='trigger-btn' data-toggle='modal' onclick='showListOffersStudent()'>Ver ofertas para PPS</a>" +
                    "                           <a class='dropdown-item' href='#appsSListModal' class='trigger-btn' data-toggle='modal' onclick='showListApplicationsS()'>Ver aplicaciones enviadas</a>" +
                    "                       </div>" +
                    "                   </li>"
                    :
                    "") +
            (
                    window.sessionStorage.role === '1' ?
                    "                       <a class='nav-link js-scroll-trigger'  href='#updateBusinessModal'data-toggle='modal' onclick='getBusiness()'>Perfil</a></li>" +
                    "                   <li class='nav-item dropdown'>" +
                    "                       <a class='nav-link dropdown-toggle' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Herramientas</a>" +
                    "                       <div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>" +
                    "                           <a class='dropdown-item' href='#membershipBModal' class='trigger-btn' data-toggle='modal'>Ver membresías</a>" +
                    "                           <a class='dropdown-item' href='#offersListModal' class='trigger-btn' data-toggle='modal' onclick='showListOffers()'>Administrar ofertas</a>" +
                    "                           <a class='dropdown-item' href='#appsBListModal' class='trigger-btn' data-toggle='modal' onclick='showListApplicationsB()'>Administrar aplicaciones</a>" +
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

    $('input[type=radio][name=flexRadioDefault]').change(function () {
        if (this.value == 'free') {
            jQuery("#monto-text").html('<p style="font-size:25px;" class="text-center">0 colones.</p>');
        } else if (this.value == 'week') {
            jQuery("#monto-text").html('<p style="font-size:25px;" class="text-center">1750 colones.</p>');
        }
    });

    $('input[type=radio][name=flexRadioDefaultB]').change(function () {
        if (this.value == 'free') {
            jQuery("#monto-textB").html('<p style="font-size:25px;" class="text-center">0 colones.</p>');
        } else if (this.value == 'month') {
            jQuery("#monto-textB").html('<p style="font-size:25px;" class="text-center">25000 colones.</p>');
        } else if (this.value == 'anual') {
            jQuery("#monto-textB").html('<p style="font-size:25px;" class="text-center">200000 colones.</p>');
        }
    });

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

function showPasswordRMB() {
    var x = document.getElementById("password_rm_bs");
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
    var pass = document.getElementById("password").value;
    $.ajax({
        type: "GET",
        url: "http://localhost:8081/dreamcatchers/api/v1/users/" + user,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            if (data["password"] === pass) {

                window.sessionStorage.user = JSON.stringify(data);
                window.sessionStorage.email = data["email"];
                window.sessionStorage.password = data["password"];
                window.sessionStorage.role = data["role"];

                console.log(window.sessionStorage.password)

                if (data["role"] === "0") {
                    $.ajax({
                        type: "GET",
                        url: "http://localhost:8081/dreamcatchers/api/v1/students/" + user,
                        contentType: "application/json",
                        dataType: 'json',
                        success: function (data) {
                            window.sessionStorage.student = JSON.stringify(data);
                            window.location.replace("/dreamcatchers/presentation/idle.jsp");
                        }
                    });
                } else {
                    $.ajax({
                        type: "GET",
                        url: "http://localhost:8081/dreamcatchers/api/v1/business/" + user,
                        contentType: "application/json",
                        dataType: 'json',
                        success: function (data) {
                            window.sessionStorage.business = JSON.stringify(data);
                            window.location.replace("/dreamcatchers/presentation/idle.jsp");
                        }
                    });
                }
            } else {
                document.getElementById("password").setAttribute('class', 'form-control is-invalid');
                document.getElementById("password").setAttribute('title', 'Contraseña incorrecta');
            }
        },
        error: function (status) {
            jQuery("#error-text").html('<p style="font-size:25px;" class="text-center">Ese usuario no existe.</p>');
            jQuery("#errorModal").appendTo("body").modal('show');
            $("#errorModal").on("hidden.bs.modal", function () {
                $('#loginModal').find('form').trigger('reset');
            });
        },
        fail: function (xhr, textStatus, errorThrown) {
            jQuery("#errorModal").appendTo("body").modal('show');
        }
    });
}
// Logout of system
function logout() {
    window.sessionStorage.removeItem("user");
    window.sessionStorage.removeItem("idUser");
    window.sessionStorage.removeItem("student");
    window.sessionStorage.removeItem("business");
    window.sessionStorage.removeItem("password");
    window.sessionStorage.removeItem("role");
    window.location.replace("/dreamcatchers");
}


// Register new student 
function addNewStudent() {
    var user_username_rm = document.getElementById("user_username_rm").value;
    var email_rm = document.getElementById("email_rm").value;
    var password_rm = document.getElementById("password_rm").value;
    var name_rm = document.getElementById("name_rm").value;
    var lastname_rm = document.getElementById("lastname_rm").value;
    var university_rm = document.getElementById("university_rm").value;
    var career_rm = document.getElementById("career_rm").value;
    var address_rm = document.getElementById("address_rm").value;
    var dob_rm = document.getElementById("dob_rm").value;

    var jsonUser = {
        "idUser": user_username_rm,
        "email": email_rm,
        "password": password_rm,
        "role": 0
    }
    var jsonStudent = {
        "idStudent": user_username_rm,
        "name": name_rm,
        "lastname": lastname_rm,
        "dob": "1995-06-20",
        "university": university_rm,
        "career": career_rm,
        "address": address_rm,
        "curriculum": "-todo-"
    }

    $.ajax({
        url: "http://localhost:8081/dreamcatchers/api/v1/users/",
        method: "POST",
        data: JSON.stringify(jsonUser),
        dataType: 'json',
        contentType: "application/json",
        async: false,
        success: function (data) {
            $.ajax({
                url: "http://localhost:8081/dreamcatchers/api/v1/students/",
                method: "POST",
                data: JSON.stringify(jsonStudent),
                dataType: 'json',
                contentType: "application/json",
                async: false,
                success: function (data) {
                    jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Cuenta creada con éxito.</p>');
                    jQuery("#successModal").appendTo("body").modal('show');
                    $("#successModal").on("hidden.bs.modal", function () {
                        $('#registerModal').modal('hide')
                    });
                }
            });
        }
    });
}
// Register new business 
function addNewBusiness() {
    var user_username_rm = document.getElementById("user_username_rm_bs").value;
    var email_rm = document.getElementById("email_rm_bs").value;
    var password_rm = document.getElementById("password_rm_bs").value;
    var name_rm = document.getElementById("name_rm_bs").value;
    var description_rm = document.getElementById("description_rm_bs").value;
    var headquarters_rm = document.getElementById("headquarters_rm_bs").value;
    var address_rm = document.getElementById("address_rm_bs").value;
    var website_rm = document.getElementById("website_rm_bs").value;
    var type_rm = document.getElementById("type_rm_bs").value;
    var revenue_rm = document.getElementById("revenue_rm_bs").value;
    var size_rm = document.getElementById("size_rm_bs").value;
    var perks_rm = document.getElementById("perks_rm_bs").value;


    var jsonUser = {
        "idUser": user_username_rm,
        "email": email_rm,
        "password": password_rm,
        "role": 1
    }
    var jsonBusiness = {
        "idBusiness": user_username_rm,
        "name": name_rm,
        "description": description_rm,
        "address": address_rm,
        "headquarters": headquarters_rm,
        "website": website_rm,
        "type": type_rm,
        "size": size_rm,
        "revenue": revenue_rm,
        "calification": "0 estrellas",
        "perks": perks_rm,
    }

    $.ajax({
        url: "http://localhost:8081/dreamcatchers/api/v1/users/",
        method: "POST",
        data: JSON.stringify(jsonUser),
        dataType: 'json',
        contentType: "application/json",
        async: false,
        success: function (data) {
            $.ajax({
                url: "http://localhost:8081/dreamcatchers/api/v1/business/",
                method: "POST",
                data: JSON.stringify(jsonBusiness),
                dataType: 'json',
                contentType: "application/json",
                async: false,
                success: function (data) {
                    jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Cuenta creada con éxito.</p>');
                    jQuery("#successModal").appendTo("body").modal('show');
                    $("#successModal").on("hidden.bs.modal", function () {
                        $('#registerModal').modal('hide')
                    });
                }
            });
        }
    });
}
// Register new offer 
function addNewOffer() {
    var user = JSON.parse(window.sessionStorage.user);
    var position = document.getElementById("o_position_add").value;
    var description = document.getElementById("o_description_add").value;
    var perks = document.getElementById("o_perks_add").value;
    var requirements = document.getElementById("o_requirements_add").value;


    var jsonOffer = {
        "idBusiness": user.idUser,
        "position": position,
        "description": description,
        "perks": perks,
        "requirements": requirements
    }

    $.ajax({
        url: "http://localhost:8081/dreamcatchers/api/v1/internship_Offer/",
        method: "POST",
        data: JSON.stringify(jsonOffer),
        dataType: 'json',
        contentType: "application/json",
        async: false,
        success: function (data) {
            jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Oferta para PPS creada con éxito.</p>');
            jQuery("#successModal").appendTo("body").modal('show');
            $("#successModal").on("hidden.bs.modal", function () {
                $('#addOfferModal').modal('hide')
            });
        }
    });
}
// Send application 
function sendApplication() {
    var user = JSON.parse(window.sessionStorage.user);
    var application = JSON.parse(window.sessionStorage.application);
    var date = new Date().toISOString().slice(0, 10).replace('T', ' ')

    console.log(date)

    var jsonApplication = {
        "idInternship_Offer": application,
        "idStudent": user.idUser,
        "date": date
    }

    $.ajax({
        url: "http://localhost:8081/dreamcatchers/api/v1/application/",
        method: "POST",
        data: JSON.stringify(jsonApplication),
        dataType: 'json',
        contentType: "application/json",
        success: function (data) {
            jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Aplicación enviada con éxito.</p>');
            jQuery("#successModal").appendTo("body").modal('show');
            $("#successModal").on("hidden.bs.modal", function () {
                $('#addOfferModal').modal('hide')
            });
        }
    });
}



// Get Student
function getStudent() {
    var user = JSON.parse(window.sessionStorage.user);
    console.log((window.sessionStorage.user))
    $.ajax({
        type: "GET",
        url: "http://localhost:8081/dreamcatchers/api/v1/students/" + user.idUser,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            fillWithInformation(data, 1);
        }
    });
}
// Update Student
function updateStudent() {

    var user_username_rm = document.getElementById("e_username_em").value;
    var email_rm = document.getElementById("e_email_em").value;
    var password_rm = document.getElementById("e_password_em").value;
    var name_rm = document.getElementById("e_name_em").value;
    var lastname_rm = document.getElementById("e_lastname_em").value;
    var university_rm = document.getElementById("e_university_em").value;
    var career_rm = document.getElementById("e_career_em").value;
    var address_rm = document.getElementById("e_address_em").value;
    var dob_rm = document.getElementById("e_dob_em").value;
    var curriculum_rm = "todo"
    var role_rm = window.sessionStorage.getItem("role");

    var jsonUser = {
        "idUser": user_username_rm,
        "email": email_rm,
        "password": password_rm,
        "role": role_rm
    }
    var jsonStudent = {
        "idStudent": user_username_rm,
        "name": name_rm,
        "lastname": lastname_rm,
        "dob": dob_rm,
        "university": university_rm,
        "career": career_rm,
        "address": address_rm,
        "curriculum": curriculum_rm
    }

    $.ajax({
        url: "http://localhost:8081/dreamcatchers/api/v1/users/" + user_username_rm,
        method: "PUT",
        data: JSON.stringify(jsonUser),
        dataType: 'json',
        contentType: "application/json",
        fail: function (xhr, textStatus, erarorThrown) {
            jQuery("#errorModal").modal('show');
        }
    });


    $.ajax({
        url: "http://localhost:8081/dreamcatchers/api/v1/students/" + user_username_rm,
        method: "PUT",
        data: JSON.stringify(jsonStudent),
        dataType: 'json',
        contentType: "application/json",
        success: function (data) {
            jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Perfil actualizado.</p>');
            jQuery("#successModal").appendTo("body").modal('show');
            $("#successModal").on("hidden.bs.modal", function () {
                $('#updateModal').modal('hide')
            });
        }
    });

}

// Get Business
function getBusiness() {
    var user = JSON.parse(window.sessionStorage.user);
    $.ajax({
        type: "GET",
        url: "http://localhost:8081/dreamcatchers/api/v1/business/" + user.idUser,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            fillWithInformation(data, 2);
        }
    });
}
// Update Business
function updateBusiness() {


    var user_username_rm = document.getElementById("b_username_em").value;
    var email_rm = document.getElementById("b_email_em").value;
    var password_rm = document.getElementById("b_password_em").value;
    var name_rm = document.getElementById("b_name_em").value;
    var description_rm = document.getElementById("b_description_em").value;
    var headquarters_rm = document.getElementById("b_headquarters_em").value;
    var address_rm = document.getElementById("b_address_em").value;
    var website_rm = document.getElementById("b_website_em").value;
    var type_rm = document.getElementById("b_type_em").value;
    var revenue_rm = document.getElementById("b_revenue_em").value;
    var size_rm = document.getElementById("b_size_em").value;
    var perks_rm = document.getElementById("b_perks_em").value;
    var calification_rm = document.getElementById("b_calification_em").value;

    var jsonUser = {
        "idUser": user_username_rm,
        "email": email_rm,
        "password": password_rm,
        "role": 1
    }
    var jsonBusiness = {
        "idBusiness": user_username_rm,
        "name": name_rm,
        "description": description_rm,
        "address": address_rm,
        "headquarters": headquarters_rm,
        "website": website_rm,
        "type": type_rm,
        "size": size_rm,
        "revenue": revenue_rm,
        "calification": calification_rm,
        "perks": perks_rm,
    }

    $.ajax({
        url: "http://localhost:8081/dreamcatchers/api/v1/users/" + user_username_rm,
        method: "PUT",
        data: JSON.stringify(jsonUser),
        dataType: 'json',
        contentType: "application/json",
        fail: function (xhr, textStatus, erarorThrown) {
            jQuery("#errorModal").modal('show');
        }
    });


    $.ajax({
        url: "http://localhost:8081/dreamcatchers/api/v1/business/" + user_username_rm,
        method: "PUT",
        data: JSON.stringify(jsonBusiness),
        dataType: 'json',
        contentType: "application/json",
        success: function (data) {
            jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Perfil actualizado.</p>');
            jQuery("#successModal").appendTo("body").modal('show');
            $("#successModal").on("hidden.bs.modal", function () {
                $('#updateModal').modal('hide')
            });
        }
    });

}

// Get Offer
function getOffer(id) {
    $.ajax({
        type: "GET",
        url: "http://localhost:8081/dreamcatchers/api/v1/internship_Offer/" + id,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            fillWithInformation(data, 3);
        }
    });
}
// Update Offer
function updateOffer() {
    var user = JSON.parse(window.sessionStorage.user);
    var id = document.getElementById("o_id_em").value;
    var position = document.getElementById("e_position_em").value;
    var description = document.getElementById("o_description_em").value;
    var perks = document.getElementById("o_perks_em").value;
    var requirements = document.getElementById("o_requirements_em").value;


    var jsonOffer = {
        "idInternship_Offer": id,
        "idBusiness": user.idUser,
        "position": position,
        "description": description,
        "perks": perks,
        "requirements": requirements
    }

    console.log(jsonOffer)

    $.ajax({
        url: "http://localhost:8081/dreamcatchers/api/v1/internship_Offer/" + id,
        method: "PUT",
        data: JSON.stringify(jsonOffer),
        dataType: 'json',
        contentType: "application/json",
        success: function (data) {
            jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Oferta actualizada.</p>');
            jQuery("#successModal").appendTo("body").modal('show');
            $("#successModal").on("hidden.bs.modal", function () {
                $('#updateOfferModal').modal('hide')
            });
        }
    });

}


// Get Offer Info
function getOfferInformation(id) {
    $.ajax({
        type: "GET",
        url: "http://localhost:8081/dreamcatchers/api/v1/internship_OfferName/" + id,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            window.sessionStorage.application = data[0]
            fillWithInformation(data, 4);
        }
    });
}

// Get Student Info
function getStudentInformation(id) {
    $.ajax({
        type: "GET",
        url: "http://localhost:8081/dreamcatchers/api/v1/students/" + id,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            fillWithInformation(data, 5);
        }
    });
}


// Fill rows with info
function fillWithInformation(data, i) {
    switch (i) {
        case 1:
        {
            // Students
            var a = new Date(data['dob']);
            a.setDate(a.getDate() + 1)
            console.log(window.sessionStorage.getItem("password"));
            document.getElementById("e_username_em").value = data['idStudent'];
            document.getElementById("e_email_em").value = window.sessionStorage.getItem("email");
            document.getElementById("e_password_em").value = window.sessionStorage.getItem("password")
            document.getElementById("e_name_em").value = data['name'];
            document.getElementById("e_lastname_em").value = data['lastname'];
            document.getElementById("e_career_em").value = data['career'];
            document.getElementById("e_university_em").value = data['university'];
            document.getElementById("e_address_em").value = data['address'];
            document.getElementById("e_dob_em").value = a.toISOString().substring(0, 10);
            break;
        }
        case 2:
        {
            // Business
            document.getElementById("b_username_em").value = data['idBusiness'];
            document.getElementById("b_email_em").value = window.sessionStorage.getItem("email");
            document.getElementById("b_password_em").value = window.sessionStorage.getItem("password")
            document.getElementById("b_name_em").value = data['name'];
            document.getElementById("b_description_em").value = data['description'];
            document.getElementById("b_address_em").value = data['address'];
            document.getElementById("b_headquarters_em").value = data['headquarters'];
            document.getElementById("b_website_em").value = data['website'];
            document.getElementById("b_type_em").value = data['type'];
            document.getElementById("b_size_em").value = data['size'];
            document.getElementById("b_revenue_em").value = data['revenue'];
            document.getElementById("b_perks_em").value = data['perks'];
            document.getElementById("b_calification_em").value = data['calification'];
            break;
        }
        case 3:
        {
            // Offers
            document.getElementById("o_id_em").value = data['idInternship_Offer'];
            document.getElementById("e_position_em").value = data['position'];
            document.getElementById("o_description_em").value = data['description']
            document.getElementById("o_perks_em").value = data['perks'];
            document.getElementById("o_requirements_em").value = data['requirements'];
            break;
        }
        case 4:
        {
            // Offers
            document.getElementById("e_business_gm").value = data[5]
            document.getElementById("e_position_gm").value = data[3];
            document.getElementById("o_description_gm").value = data[1]
            document.getElementById("o_perks_gm").value = data[2];
            document.getElementById("o_requirements_gm").value = data[4];
            break;
        }
        case 5:
        {
            // Students
            var a = new Date(data['dob']);
            a.setDate(a.getDate() + 1)
            document.getElementById("e_name_gm").value = data['name'];
            document.getElementById("e_lastname_gm").value = data['lastname'];
            document.getElementById("e_career_gm").value = data['career'];
            document.getElementById("e_university_gm").value = data['university'];
            document.getElementById("e_address_gm").value = data['address'];
            document.getElementById("e_dob_gm").value = a.toISOString().substring(0, 10);
            break;
        }
    }
}


// List
function showListOffers() {
    $.ajax({
        type: 'GET',
        url: 'http://localhost:8081/dreamcatchers/api/v1/internship_Offer/',
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            //alert(JSON.stringify(data));
            list(data, 1);
            $(document).ready(function () {
                $('#offersTable').DataTable({
                    responsive: true,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
                    },
                    retrieve: true
                })
            });
        }
    })
}

function showListOffersStudent() {
    $.ajax({
        type: 'GET',
        url: 'http://localhost:8081/dreamcatchers/api/v1/internship_OfferName/',
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            list(data, 3);
            $(document).ready(function () {
                $('#offersStudentTable').DataTable({
                    responsive: true,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
                    },
                    retrieve: true
                })
            });
        }
    })
}


function showListApplicationsB() {
    $.ajax({
        type: 'GET',
        url: 'http://localhost:8081/dreamcatchers/api/v1/applicationFilt/',
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            list(data, 2);
            $(document).ready(function () {
                $('#appsBTable').DataTable({
                    responsive: true,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
                    },
                    retrieve: true
                })
            });
        }
    })
}


function showListApplicationsS() {
    var user = JSON.parse(window.sessionStorage.user);

    $.ajax({
        type: 'GET',
        url: 'http://localhost:8081/dreamcatchers/api/v1/applicationStudent/' + user.idUser,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            list(data, 4);
            $(document).ready(function () {
                $('#appsSTable').DataTable({
                    responsive: true,
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
                    },
                    retrieve: true
                })
            });
        }
    })
}


//Create list
function list(data, i) {
    switch (i) {
        case 1:
        {
            var listado = document.getElementById("offersTableBody");
            listado.innerHTML = "";
            data.forEach((u) => {
                row(u, 1);
            });
            break;
        }
        case 2:
        {
            var listado = document.getElementById("appsBTableBody");
            listado.innerHTML = "";
            data.forEach((u) => {
                row(u, 2);
            });
            break;
        }
        case 3:
        {
            var listado = document.getElementById("offersStudentTableBody");
            listado.innerHTML = "";
            data.forEach((u) => {
                row(u, 3);
            });
            break;
        }
        case 4:
        {
            var listado = document.getElementById("appsSTableBody");
            listado.innerHTML = "";
            data.forEach((u) => {
                row(u, 4);
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
            case 1:
            {
                tr += '<td>' + data.idInternship_Offer + '</td>';
                tr += '<td>' + data.position + '</td>';
                tr += '<td>' + data.requirements + '</td>';
                tr += '<td style="text-align:center"><button class="offersEdit" href="#updateOfferModal" class="trigger-btn" data-toggle="modal" onclick="getOffer(' + "\'" + data.idInternship_Offer + "\'" + ')"><i class="fas fa-edit"></i></button></td>';
                tr += '<td style="text-align:center"><button class="offersDelete" class="trigger-btn" data-toggle="modal" onclick="deleteOffer(' + "\'" + data.idInternship_Offer + "\'" + ')"><i class="fas fa-trash"></i></button></td>';
                tr += '</tr>';
                $('#offersTableBody').append(tr);
                break;
            }
            case 2:
            {
                tr += '<td>' + data[0] + '</td>';
                tr += '<td>' + data[3] + '</td>';
                tr += '<td>' + data[1] + '</td>';
                tr += '<td>' + data[4] + ' ' + data[5] + '</td>';
                tr += '<td>' + data[6] + '</td>';
                tr += '<td>' + data[7] + '</td>';
                tr += '<td style="text-align:center"><button class="studentInfo" href="#getStudentModal" class="trigger-btn" data-toggle="modal" onclick="getStudentInformation(' + "\'" + data[8] + "\'" + ')"><i class="fas fa-info-circle"></i></button></td>';
                tr += '<td style="text-align:center"><button class="appsDelete" class="trigger-btn" data-toggle="modal" onclick="deleteApplication(' + "\'" + data[0] + "\'" + ')"><i class="fas fa-trash"></i></button></td>';
                tr += '</tr>';
                $('#appsBTableBody').append(tr);
                break;
            }
            case 3:
            {
                tr += '<td>' + data[5] + '</td>';
                tr += '<td>' + data[3] + '</td>';
                tr += '<td>' + data[4] + '</td>';
                tr += '<td style="text-align:center"><button class="offersInfo" href="#getOfferModal" class="trigger-btn" data-toggle="modal" onclick="getOfferInformation(' + "\'" + data[0] + "\'" + ')"><i class="fas fa-info-circle"></i></button></td>';
                tr += '</tr>';
                $('#offersStudentTableBody').append(tr);
                break;
            }
            case 4:
            {
                tr += '<td>' + data[0] + '</td>';
                tr += '<td>' + data[2] + '</td>';
                tr += '<td>' + data[3] + '</td>';
                tr += '<td>' + data[1] + '</td>';
                tr += '<td style="text-align:center"><button class="appsDelete" class="trigger-btn" data-toggle="modal" onclick="deleteApplication(' + "\'" + data[0] + "\'" + ')"><i class="fas fa-trash"></i></button></td>';
                tr += '</tr>';
                $('#appsSTableBody').append(tr);
                break;
            }
        }
    }
}


// Delete
function deleteOffer(id) {
    $.ajax({
        type: "DELETE",
        url: "http://localhost:8081/dreamcatchers/api/v1/internship_Offer/" + id,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Oferta borrada.</p>');
            jQuery("#successModal").appendTo("body").modal('show');
            $("#successModal").on("hidden.bs.modal", function () {
                window.location.reload();
            });
        }
    });
}

function deleteApplication(id) {
    $.ajax({
        type: "DELETE",
        url: "http://localhost:8081/dreamcatchers/api/v1/application/" + id,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Aplicación borrada.</p>');
            jQuery("#successModal").appendTo("body").modal('show');
            $("#successModal").on("hidden.bs.modal", function () {
                window.location.reload();
            });
        }
    });
}


function checkTerms() {
    if ($('#termsCheck').is(':checked')) {
        $('#cvSendModal1').modal('hide')
        $('#cvSendModal2').appendTo("body").modal('show');
    } else {
        jQuery("#error-text").html('<p style="font-size:25px;" class="text-center">Por favor darle click a la casilla para aceptar las condiciones.</p>');
        jQuery("#errorModal").appendTo("body").modal('show');
    }
}

function requestCV() {
    jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Se ha solicitado el envio del CV del estudiante.</p>');
    jQuery("#successModal").appendTo("body").modal('show');
    $("#successModal").on("hidden.bs.modal", function () {
        $('#getStudentModal').modal('hide')
    });
}

function confirmMembership() {


    jQuery("#success-text").html('<p style="font-size:25px;" class="text-center">Membresía actualizada satisfactoriamente.</p>');
    jQuery("#successModal").appendTo("body").modal('show');


}
