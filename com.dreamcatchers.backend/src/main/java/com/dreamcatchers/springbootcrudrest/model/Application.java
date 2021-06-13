package com.dreamcatchers.springbootcrudrest.model;

/**
 *
 * @author yenca
 */
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.io.Serializable;
import java.sql.Date;
import java.util.Set;
import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "APPLICATION")
@EntityListeners(AuditingEntityListener.class)

public class Application implements Serializable {

    private String idApplication;
    private String idStudent;
    private String idInternship_Offer;
    private Date date;
    private Internship_Offer internship_Offers;
 
    @Id
    @Column(name = "idApplication")
    public String getIdApplication() {
        return idApplication;
    }

    public void setIdApplication(String idApplication) {
        this.idApplication = idApplication;
    }
    
    @Access(AccessType.FIELD)
    @OneToMany(mappedBy = "application", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<Student> students;

    @Column(name = "idStudent", nullable = false)
    public String getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(String idStudent) {
        this.idStudent = idStudent;
    }
    
    @OneToOne(mappedBy = "application", cascade = CascadeType.ALL)
    @JsonBackReference
    public Internship_Offer getInternship_Offer() {
        return internship_Offers;
    }

    public void setInternship_Offer(Internship_Offer internship_Offers) {
        this.internship_Offers = internship_Offers;
    }
    
    @Column(name = "idInternship_Offer", nullable = false)
    public String getIdInternship_Offer() {
        return idInternship_Offer;
    }

    public void setIdInternship_Offer(String idInternship_Offer) {
        this.idInternship_Offer = idInternship_Offer;
    }
    
    @Column(name = "date", nullable = false)
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    @Column(name = "students", nullable = false)
    public Set<Student> getStudents() {
        return students;
    }

    public void setStudents(Set<Student> students) {
        this.students = students;
    }
   
}
