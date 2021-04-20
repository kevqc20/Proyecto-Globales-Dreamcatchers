package com.dreamcatchers.springbootcrudrest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dreamcatchers.springbootcrudrest.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, String>{

}
