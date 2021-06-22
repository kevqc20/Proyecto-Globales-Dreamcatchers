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
import com.dreamcatchers.springbootcrudrest.model.Business;
import com.dreamcatchers.springbootcrudrest.model.Internship_Offer;
import com.dreamcatchers.springbootcrudrest.repository.BusinessRepository;
import com.dreamcatchers.springbootcrudrest.repository.Internship_OfferRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@RestController
@RequestMapping("/api/v1")
public class Internship_OfferController {
    
    @Autowired
    private Internship_OfferRepository internship_OfferRepository;
    
    @Autowired
    private BusinessRepository businessRepository;

    //Obtener todos las internship_Offers
    @CrossOrigin
    @GetMapping("/internship_Offer")
    public List<Internship_Offer> getAllInternship_Offer() {
        return internship_OfferRepository.findAll();
    }

    //Obtener todos las internship_Offers
    @CrossOrigin
    @GetMapping("/internship_OfferName")
    public List<Object> getAllInternship_OfferWithName() {
        return internship_OfferRepository.findInternship_OfferWithNameList();
    }

    //Obtener la internship_Offer por el id
    @CrossOrigin
    @GetMapping("/internship_Offer/{id}")
    public ResponseEntity<Internship_Offer> getInternship_OffernById(
            @PathVariable(value = "id") long internship_OfferId) throws ResourceNotFoundException {
        Internship_Offer internship_Offer = internship_OfferRepository.findById(internship_OfferId)
                .orElseThrow(() -> new ResourceNotFoundException("Internship_Offer not found :: " + internship_OfferId));
        return ResponseEntity.ok().body(internship_Offer);
    }

    //Obtener la internship_Offer por el id con nombre
    @CrossOrigin
    @GetMapping("/internship_OfferName/{id}")
    public ResponseEntity<Object> getInternship_OffernByIdWithName(
            @PathVariable(value = "id") long internship_OfferId) throws ResourceNotFoundException {
        Object internship_Offer = internship_OfferRepository.findInternship_OfferWithName(internship_OfferId);
        return ResponseEntity.ok().body(internship_Offer);
    }

    //Actualizar la internship_Offer
    @CrossOrigin
    @PutMapping("/internship_Offer/{id}")
    public ResponseEntity<Internship_Offer> updateInternship_Offer(
            @PathVariable(value = "id") Long internship_OfferId,
            @Valid @RequestBody Internship_Offer internship_OfferDetails) throws ResourceNotFoundException {
        
        Internship_Offer internship_Offer = internship_OfferRepository.findById(internship_OfferId)
                .orElseThrow(() -> new ResourceNotFoundException("Internship_Offer not found :: " + internship_OfferId));
        
        internship_Offer.setIdInternship_Offer(internship_OfferDetails.getIdInternship_Offer());
        internship_Offer.setPosition(internship_OfferDetails.getPosition());
        internship_Offer.setDescription(internship_OfferDetails.getDescription());
        internship_Offer.setPerks(internship_OfferDetails.getPerks());
        internship_Offer.setRequirements(internship_OfferDetails.getRequirements());
        internship_Offer.setBusiness(internship_OfferDetails.getBusiness());
        internship_Offer.setIdBusiness(internship_OfferDetails.getIdBusiness());
        final Internship_Offer updateInternship_Offer = internship_OfferRepository.save(internship_Offer);
        return ResponseEntity.ok(updateInternship_Offer);
    }

    //Crear una internship_Offer
    @CrossOrigin
    @PostMapping("/internship_Offer")
    public Internship_Offer createInternship_Offer(@Valid @RequestBody Internship_Offer internship_Offer) {
        Business business = businessRepository.findById(internship_Offer.getIdBusiness()).get();
        internship_Offer.setBusiness(business);
        return internship_OfferRepository.save(internship_Offer);
    }

    //Eliminar internship_Offer
    @CrossOrigin
    @DeleteMapping("/internship_Offer/{id}")
    public Map<String, Boolean> deleteInternship_Offer(
            @PathVariable(value = "id") long internship_OfferId) throws ResourceNotFoundException {
        Internship_Offer internship_Offer = internship_OfferRepository.findById(internship_OfferId)
                .orElseThrow(() -> new ResourceNotFoundException("Internship_Offer not found :: " + internship_OfferId));
        
        internship_OfferRepository.delete(internship_Offer);
        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);
        return response;
    }
    
}
