package com.dreamcatchers.springbootcrudrest.controller;

/*
 * @author yenca
 */
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
import com.dreamcatchers.springbootcrudrest.model.Application;
import com.dreamcatchers.springbootcrudrest.model.Internship_Offer;
import com.dreamcatchers.springbootcrudrest.repository.ApplicationRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@RestController
@RequestMapping("/api/v1")
public class ApplicationController {

    @Autowired
    private ApplicationRepository applicationRepository;

    //Obtener todos las aplicaciones
    @CrossOrigin
    @GetMapping("/application")
    public List<Application> getAllApplication() {
        return applicationRepository.findAll();
    }

    //Obtener la aplicacion por el id
    @CrossOrigin
    @GetMapping("/application/{id}")
    public ResponseEntity<Application> getApplicationById(
            @PathVariable(value = "id") String applicationId) throws ResourceNotFoundException {
        Application application = applicationRepository.findById(applicationId)
                .orElseThrow(() -> new ResourceNotFoundException("Application not found :: " + applicationId));
        return ResponseEntity.ok().body(application);
    }

    //Actualizar la aplicacion
    @CrossOrigin
    @PutMapping("/application/{id}")
    public ResponseEntity<Application> updateApplication(
            @PathVariable(value = "id") String applicationId,
            @Valid @RequestBody Application applicationDetails) throws ResourceNotFoundException {
        Application application = applicationRepository.findById(applicationId)
                .orElseThrow(() -> new ResourceNotFoundException("Application not found :: " + applicationId));

        application.setStudent(application.getStudent());
        application.setInternship_Offer(application.getInternship_Offer());
        application.setidApplication(application.getidApplication());
        application.setidStudent(application.getidStudent());
        application.setidInternship_Offer(application.getidInternship_Offer());
        application.setDate(application.getDate());
        
        final Application updateApplication = applicationRepository.save(application);
        return ResponseEntity.ok(updateApplication);
    }

    //Crear una aplicacion
    @CrossOrigin
    @PostMapping("/application")
    public Application createBusiness(@Valid @RequestBody Application application) {
        return applicationRepository.save(application);
    }

    //Eliminar aplicacion
    @CrossOrigin
    @DeleteMapping("/application/{id}")
    public Map<String, Boolean> deleteApplication(
            @PathVariable(value = "id") String applicationId) throws ResourceNotFoundException {
        Application application = applicationRepository.findById(applicationId)
                .orElseThrow(() -> new ResourceNotFoundException("Application not found :: " + applicationId));

        applicationRepository.delete(application);
        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);
        return response;
    }

}