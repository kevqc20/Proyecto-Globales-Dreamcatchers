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
import com.dreamcatchers.springbootcrudrest.repository.BusinessRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@RestController
@RequestMapping("/api/v1")
public class BusinessController {

    @Autowired
    private BusinessRepository businessRepository;

    //Obtener todos las empresas
    @CrossOrigin
    @GetMapping("/business")
    public List<Business> getAllBusiness() {
        return businessRepository.findAll();
    }

    //Obtener la empresa por el id
    @CrossOrigin
    @GetMapping("/business/{id}")
    public ResponseEntity<Business> getBusinessById(
            @PathVariable(value = "id") String businessId) throws ResourceNotFoundException {
        Business business = businessRepository.findById(businessId)
                .orElseThrow(() -> new ResourceNotFoundException("Business not found :: " + businessId));
        return ResponseEntity.ok().body(business);
    }

    //Actualizar la empresa
    @CrossOrigin
    @PutMapping("/business/{id}")
    public ResponseEntity<Business> updateBusiness(
            @PathVariable(value = "id") String businessId,
            @Valid @RequestBody Business businessDetails) throws ResourceNotFoundException {
        Business business = businessRepository.findById(businessId)
                .orElseThrow(() -> new ResourceNotFoundException("Business not found :: " + businessId));

        business.setIdBusiness(businessDetails.getIdBusiness());
        business.setName(businessDetails.getName());
        business.setDescription(businessDetails.getDescription());
        business.setAddress(businessDetails.getAddress());
        business.setHeadquarters(businessDetails.getHeadquarters());
        business.setWebsite(businessDetails.getWebsite());
        business.setType(businessDetails.getType());
        business.setSize(businessDetails.getSize());
        business.setRevenue(businessDetails.getRevenue());
        business.setCalification(businessDetails.getCalification());
        business.setPerks(businessDetails.getPerks());

        final Business updatedBusiness = businessRepository.save(business);
        return ResponseEntity.ok(updatedBusiness);
    }

    //Crear una empresa
    @CrossOrigin
    @PostMapping("/business")
    public Business createBusiness(@Valid @RequestBody Business business) {
        return businessRepository.save(business);
    }

    //Eliminar empresa
    @CrossOrigin
    @DeleteMapping("/business/{id}")
    public Map<String, Boolean> deleteBusiness(
            @PathVariable(value = "id") String businessId) throws ResourceNotFoundException {
        Business business = businessRepository.findById(businessId)
                .orElseThrow(() -> new ResourceNotFoundException("Business not found :: " + businessId));

        businessRepository.delete(business);
        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);
        return response;
    }

}