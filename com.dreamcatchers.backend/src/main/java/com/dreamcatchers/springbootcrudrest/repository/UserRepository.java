package com.dreamcatchers.springbootcrudrest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dreamcatchers.springbootcrudrest.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, String>{

 String SQL_AUTHENTIFICATION = "select u.idUser, u.email, u.password, u.idStudent from User u where u.email = :email and u.password = :password";
 @Query(nativeQuery = true, value = SQL_AUTHENTIFICATION);
 Object userApplicationLogin(@Param("email") String email,@Param("password") String password);
    
  String SQL_LOGOUT = "select u.idUser, u.email, u.password, u.idStudent from User u where u.token = :userToken and u.idUser = :idUser";
 @Query(nativeQuery = true, value = SQL_LOGOUT);
 Object userApplicationLogout(@Param("userToken") String userToken,@Param("idUser") String idUser);

    	
}
