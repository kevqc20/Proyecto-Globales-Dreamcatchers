package com.dreamcatchers.springbootcrudrest.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
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
import com.dreamcatchers.springbootcrudrest.model.Student;
import com.dreamcatchers.springbootcrudrest.repository.UserRepository;
import com.dreamcatchers.springbootcrudrest.repository.StudentRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ResponseBody;
import com.dreamcatchers.springbootcrudrest.constant.UserConstant;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private StudentRepository studentRepository;
    
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
               User user= userRepository.getUser(userEmail , userPassword);
               Student student = studentRepository.findById(user.getStudent().getIdStudent())
                .orElseThrow(() -> new ResourceNotFoundException("Student not found :: " + user.getStudent().getIdStudent()));
               String token= getJWTToken(student.getName());
               user.setToken(token);
               updateUser(user.getIdUser(), user);
               response = user;
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
    @PostMapping("/users/logout")
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
    
    
    //Creacion token
    private String getJWTToken(String username) {
	String secretKey = "mySecretKey";
	List<GrantedAuthority> grantedAuthorities = AuthorityUtils.commaSeparatedStringToAuthorityList("ROLE_USER");
		
	String token = Jwts
                .builder()
		.setId("softtekJWT")
		.setSubject(username)
		.claim("authorities", grantedAuthorities.stream()
				.map(GrantedAuthority::getAuthority)
				.collect(Collectors.toList()))
                                    .setIssuedAt(new Date(System.currentTimeMillis()))
                                    .setExpiration(new Date(System.currentTimeMillis() + 600000))
                                    .signWith(SignatureAlgorithm.HS512, secretKey.getBytes()).compact();

	return "Bearer " + token;
    }
}
