/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dreamcatchers.springbootcrudrest.constant;


public interface UserConstant {

   static final String MESSAGE	= "message";
   static final String MESSAGE_TYPE = "type";
   static final String MESSAGE_TYPE_SUCCESS = "success";
   static final String MESSAGE_TYPE_ERROR = "error";
   static final String MESSAGE_ERROR = "Ocurrio un error con las credenciales, las mismas no pueden ir vacias.";
   static final String MESSAGE_ERROR_LOGIN = "Ocurrio un error al intentar hacer login";
   static final String MESSAGE_ERROR_LOGOUT = "Ocurrio un error al intentar hacer logout";
}