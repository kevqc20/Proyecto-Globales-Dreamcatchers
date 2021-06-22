/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dreamcatchers.springbootcrudrest.repository;

import com.dreamcatchers.springbootcrudrest.model.Application;
import com.dreamcatchers.springbootcrudrest.model.Internship_Offer;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author yenca
 */
public interface Internship_OfferRepository extends JpaRepository<Internship_Offer, Long> {

    @Query("SELECT i.idInternship_Offer, i.description, i.perks, i.position, i.requirements, b.name"
            + " FROM Internship_Offer i, Business b "
            + " WHERE i.idBusiness = b.idBusiness and i.idInternship_Offer = :idInternship_Offer")
    Object findInternship_OfferWithName(
            @Param("idInternship_Offer") Long id);

    @Query("SELECT i.idInternship_Offer, i.description, i.perks, i.position, i.requirements, b.name"
            + " FROM Internship_Offer i, Business b "
            + " WHERE i.idBusiness = b.idBusiness")
    List<Object> findInternship_OfferWithNameList();
}
