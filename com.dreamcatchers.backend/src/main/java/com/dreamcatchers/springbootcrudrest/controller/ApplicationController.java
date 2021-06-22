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
import com.dreamcatchers.springbootcrudrest.model.Student;
import com.dreamcatchers.springbootcrudrest.repository.ApplicationRepository;
import com.dreamcatchers.springbootcrudrest.repository.Internship_OfferRepository;
import com.dreamcatchers.springbootcrudrest.repository.StudentRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@RestController
@RequestMapping("/api/v1")
public class ApplicationController {

    @Autowired
    private ApplicationRepository applicationRepository;

    @Autowired
    private Internship_OfferRepository internship_OfferRepository;

    @Autowired
    private StudentRepository studentRepository;

    //Obtener todos las aplicaciones
    @CrossOrigin
    @GetMapping("/application")
    public List<Application> getAllApplication() {
        return applicationRepository.findAll();
    }

    //Obtener todos las aplicaciones por estudiante
    @CrossOrigin
    @GetMapping("/applicationStudent/{idStudent}")
    public List<Object> getAllApplicationsByStudent(@PathVariable(value = "idStudent") String idStudent) throws ResourceNotFoundException {
        return applicationRepository.findApplicationByStudent(idStudent);
    }

    //Obtener todos las aplicaciones por estudiante
    @CrossOrigin
    @GetMapping("/applicationFilt")
    public List<Object> getAllApplicationsFiltered() throws ResourceNotFoundException {
        return applicationRepository.findApplicationFiltered();
    }

    //Obtener la aplicacion por el id
    @CrossOrigin
    @GetMapping("/application/{id}")
    public ResponseEntity<Application> getApplicationById(
            @PathVariable(value = "id") Long applicationId) throws ResourceNotFoundException {
        Application application = applicationRepository.findById(applicationId)
                .orElseThrow(() -> new ResourceNotFoundException("Application not found :: " + applicationId));
        return ResponseEntity.ok().body(application);
    }

    //Actualizar la aplicacion
    @CrossOrigin
    @PutMapping("/application/{id}")
    public ResponseEntity<Application> updateApplication(
            @PathVariable(value = "id") Long applicationId,
            @Valid @RequestBody Application applicationDetails) throws ResourceNotFoundException {
        Application application = applicationRepository.findById(applicationId)
                .orElseThrow(() -> new ResourceNotFoundException("Application not found :: " + applicationId));

        application.setIdApplication(application.getIdApplication());
        application.setOffer(application.getOffer());
        application.setDate(application.getDate());
        application.setStudent(application.getStudent());
        application.setIdInternship_Offer(application.getIdInternship_Offer());
        application.setIdStudent(application.getIdStudent());
        final Application updateApplication = applicationRepository.save(application);
        return ResponseEntity.ok(updateApplication);
    }

    //Crear una aplicacion
    @CrossOrigin
    @PostMapping("/application")
    public Application createApplication(@Valid @RequestBody Application application) {
        Internship_Offer internship_Offer = internship_OfferRepository.findById(application.getIdInternship_Offer()).get();
        application.setOffer(internship_Offer);
        Student student = studentRepository.findById(application.getIdStudent()).get();
        application.setStudent(student);
        return applicationRepository.save(application);
    }

    //Eliminar aplicacion
    @CrossOrigin
    @DeleteMapping("/application/{id}")
    public Map<String, Boolean> deleteApplication(
            @PathVariable(value = "id") Long applicationId) throws ResourceNotFoundException {
        Application application = applicationRepository.findById(applicationId)
                .orElseThrow(() -> new ResourceNotFoundException("Application not found :: " + applicationId));

        applicationRepository.delete(application);
        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);
        return response;
    }

}
