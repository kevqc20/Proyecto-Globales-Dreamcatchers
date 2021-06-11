package com.dreamcatchers.springbootcrudrest.repository;
import com.dreamcatchers.springbootcrudrest.model.Business;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author yenca
 */

@Repository
public interface BusinessRepository extends JpaRepository<Business, String>{

}

