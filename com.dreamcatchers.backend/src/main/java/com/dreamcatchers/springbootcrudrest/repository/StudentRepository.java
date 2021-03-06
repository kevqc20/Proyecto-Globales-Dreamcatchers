package com.dreamcatchers.springbootcrudrest.repository;
/**
 *
 * @author yenca
 */
import com.dreamcatchers.springbootcrudrest.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepository extends JpaRepository<Student, String>{

}
