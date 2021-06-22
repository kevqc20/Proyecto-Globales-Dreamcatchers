/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dreamcatchers.springbootcrudrest.repository;

import com.dreamcatchers.springbootcrudrest.model.Application;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author yenca
 */
public interface ApplicationRepository extends JpaRepository<Application, Long> {

    @Query("SELECT a.idApplication, a.date, b.name, i.position "
            + " FROM Application a, Business b, Internship_Offer i "
            + " WHERE a.idStudent = :idStudent and a.idInternship_Offer = i.idInternship_Offer and i.idBusiness = b.idBusiness")
    List<Object> findApplicationByStudent(
            @Param("idStudent") String name);
    
        @Query("SELECT a.idApplication, a.date, b.name, i.position, e.name, e.lastname, e.university, e.career, e.idStudent "
            + " FROM Application a, Business b, Internship_Offer i, Student e"
            + " WHERE a.idStudent = e.idStudent and a.idInternship_Offer = i.idInternship_Offer and i.idBusiness = b.idBusiness")
    List<Object> findApplicationFiltered();


}
