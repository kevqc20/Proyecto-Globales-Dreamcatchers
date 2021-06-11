/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dreamcatchers.springbootcrudrest.repository;

import com.dreamcatchers.springbootcrudrest.model.Application;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author yenca
 */
public interface ApplicationRepository extends JpaRepository<Application, String>{
    
}
