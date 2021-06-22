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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "APPLICATION")
@EntityListeners(AuditingEntityListener.class)

public class Application implements Serializable {

    private long idApplication;
    private long idInternship_Offer;
    private String idStudent;
    private Internship_Offer offer;
    private Date date;
    private Student student;

    @Id
    @GeneratedValue(
            strategy = GenerationType.AUTO,
            generator = "native"
    )
    @GenericGenerator(
            name = "native",
            strategy = "native"
    )
    @Column(name = "idApplication")
    public long getIdApplication() {
        return idApplication;
    }

    public void setIdApplication(long idApplication) {
        this.idApplication = idApplication;
    }

    @Column(name = "idInternship_Offer", nullable = false)
    public long getIdInternship_Offer() {
        return idInternship_Offer;
    }

    public void setIdInternship_Offer(long idInternship_Offer) {
        this.idInternship_Offer = idInternship_Offer;
    }

    @ManyToOne
    @JoinColumn(name = "idInternship_Offer", insertable = false, updatable = false)
    @JsonBackReference(value = "application-offer")
    public Internship_Offer getOffer() {
        return offer;
    }

    public void setOffer(Internship_Offer offers) {
        this.offer = offers;
    }

    @Column(name = "date", nullable = false)
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @ManyToOne
    @JoinColumn(name = "idStudent", insertable = false, updatable = false)
    @JsonBackReference(value = "application-student")
    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    @Column(name = "idStudent", nullable = false)
    public String getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(String idStudent) {
        this.idStudent = idStudent;
    }

}
