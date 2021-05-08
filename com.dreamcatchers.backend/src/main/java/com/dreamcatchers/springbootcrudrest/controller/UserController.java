package com.dreamcatchers.springbootcrudrest.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dreamcatchers.springbootcrudrest.exception.ResourceNotFoundException;
import com.dreamcatchers.springbootcrudrest.model.User;
import com.dreamcatchers.springbootcrudrest.repository.UserRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ResponseBody;
import com.dreamcatchers.springbootcrudrest.constant.UserConstant;


@RestController
@RequestMapping("/api/v1")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    //Obtener todos los usuarios
    @CrossOrigin
    @GetMapping("/users")
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    //Obtener el usuario por identificacion
    @CrossOrigin
    @GetMapping("/users/{id}")
    public ResponseEntity<User> getUserById(
            @PathVariable(value = "id") String userId) throws ResourceNotFoundException {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new ResourceNotFoundException("User not found :: " + userId));
        return ResponseEntity.ok().body(user);
    }

    //Crear un Usuario
    @CrossOrigin
    @PostMapping("/users")
    public User createUser(@Valid @RequestBody User user) {
        return userRepository.save(user);
    }

    //Actualizar Usuario
    @CrossOrigin
    @PutMapping("/users/{id}")
    public ResponseEntity<User> updateUser(
            @PathVariable(value = "id") String userId,
            @Valid @RequestBody User userDetails) throws ResourceNotFoundException {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new ResourceNotFoundException("User not found :: " + userId));
        user.setIdUser(userDetails.getIdUser());
        user.setEmail(userDetails.getEmail());
        user.setRole(userDetails.getRole());
        user.setPassword(userDetails.getPassword());
        final User updatedUser = userRepository.save(user);
        return ResponseEntity.ok(updatedUser);
    }

    //Eliminar Usuario
    @CrossOrigin
    @DeleteMapping("/users/{id}")
    public Map<String, Boolean> deleteUser(
            @PathVariable(value = "id") String userId) throws ResourceNotFoundException {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new ResourceNotFoundException("User not found :: " + userId));
        userRepository.delete(user);
        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);
        return response;
    }
    
    //Login
    @CrossOrigin
    @GetMapping("/users/login")
    public Map<String, String> login(@PathVariable(value = "email") String userEmail, @PathVariable(value = "password") String userPassword) 
            throws ResourceNotFoundException {
        Map<String, String> response 	= new HashMap<String, String>();
        
        if(userEmail != null && userPassword != null){
            try {
               response = userRepository.userApplicationLogin(userEmail,userPassword);
            }catch(Exception e){
                response.put(MESSAGE_TYPE,MESSAGE_TYPE_ERROR);
                response.put(MESSAGE, MESSAGE_ERROR_LOGIN); 
            }
        }else{
            response.put(MESSAGE_TYPE,MESSAGE_TYPE_ERROR);
            response.put(MESSAGE, MESSAGE_ERROR);
        }
      return response;
    }
    
    //Logout
     @CrossOrigin
    @GetMapping("/users/login")
    public Map<String, String> logout(@PathVariable(value = "token") String userToken, @PathVariable(value = "user") String idUser) 
            throws ResourceNotFoundException {
        Map<String, String> response 	= new HashMap<String, String>();
        
        if(userToken != null && idUser != null){
            try {
               response = userRepository.userApplicationLogout(userToken,idUser);
            }catch(Exception e){
                response.put(MESSAGE_TYPE,MESSAGE_TYPE_ERROR);
                response.put(MESSAGE, MESSAGE_ERROR_LOGOUT); 
            }
        }else{
            response.put(MESSAGE_TYPE,MESSAGE_TYPE_ERROR);
            response.put(MESSAGE, MESSAGE_ERROR);
        }
      return response;
    }
}
