package com.dreamcatchers.springbootcrudrest.model;

/**
 *
 * @author yenca
 */
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "APPLICATION")
@EntityListeners(AuditingEntityListener.class)

public class Application implements Serializable {

    private Student student;
    private Internship_Offer internship_Offer;
    private String idApplication;
    private String idStudent;
    private String idInternship_Offer;
    private Date date;

    @Id
    @Column(name = "idApplication")
    public String getidApplication() {
        return idApplication;
    }

    public void setidApplication(String idApplication) {
        this.idApplication = idApplication;
    }

    @Id
    @Column(name = "idStudent")
    public String getidStudent() {
        return idStudent;
    }

    public void setidStudent(String idStudent) {
        this.idStudent = idStudent;
    }

     @Id
    @Column(name = "idInternship_Offer")
    public String getidInternship_Offer() {
        return idInternship_Offer;
    }

    public void setidInternship_Offer(String idInternship_Offer) {
        this.idInternship_Offer = idInternship_Offer;
    }

    
    @OneToOne
    @JoinColumn(name="idStudent", referencedColumnName="idStudent") // Cambiar a foreign
    @JsonManagedReference
    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }
    
    @OneToOne
    @JoinColumn(name="idInternship_Offer", referencedColumnName="idInternship_Offer") // Cambiar a foreign
    @JsonManagedReference
    public Internship_Offer getInternship_Offer() {
        return internship_Offer;
    }

    public void setInternship_Offer(Internship_Offer internship_Offer) {
        this.internship_Offer = internship_Offer;
    }

 @Column(name = "date", nullable = false)
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
