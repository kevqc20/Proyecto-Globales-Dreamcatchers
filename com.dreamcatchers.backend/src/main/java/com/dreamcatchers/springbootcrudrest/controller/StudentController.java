package com.dreamcatchers.springbootcrudrest.controller;

import java.util.Date;
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
import com.dreamcatchers.springbootcrudrest.model.Student;
import com.dreamcatchers.springbootcrudrest.repository.StudentRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ResponseBody;

@RestController
@RequestMapping("/api/v1")
public class StudentController {

    @Autowired
    private StudentRepository studentRepository;

    //Obtener todos los ciudadanos
    @CrossOrigin
    @GetMapping("/students")
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    //Obtener el ciudadano por correo electronico
    @CrossOrigin
    @GetMapping("/students/{id}")
    public ResponseEntity<Student> getStudentById(
            @PathVariable(value = "id") String studentId) throws ResourceNotFoundException {
        Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("Student not found :: " + studentId));
        return ResponseEntity.ok().body(student);
    }

    //Actualizar ciudadano
    @CrossOrigin
    @PutMapping("/students/{id}")
    public ResponseEntity<Student> updateStudent(
            @PathVariable(value = "id") String studentId,
            @Valid @RequestBody Student studentDetails) throws ResourceNotFoundException {
        Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("User not found :: " + studentId));
        student.setIdStudent(studentDetails.getIdStudent());
        student.setName(studentDetails.getName());
        student.setLastname(studentDetails.getLastname());
        student.setAddress(studentDetails.getAddress());
        student.setCareer(studentDetails.getCareer());
        student.setCurriculum(studentDetails.getCurriculum());
        student.setDob(studentDetails.getDob());
        student.setUniversity(studentDetails.getUniversity());
        final Student updatedStudent = studentRepository.save(student);
        return ResponseEntity.ok(updatedStudent);
    }

    //Crear un Student
    @CrossOrigin
    @PostMapping("/students")
    public Student createStudent(@Valid @RequestBody Student student) {
        return studentRepository.save(student);
    }

    //Eliminar Student
    @CrossOrigin
    @DeleteMapping("/students/{id}")
    public Map<String, Boolean> deleteStudent(
            @PathVariable(value = "id") String studentId) throws ResourceNotFoundException {
        Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("Student not found :: " + studentId));

        studentRepository.delete(student);
        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);
        return response;
    }

}
