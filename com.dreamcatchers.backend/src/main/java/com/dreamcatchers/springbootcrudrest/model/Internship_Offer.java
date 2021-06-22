package com.dreamcatchers.springbootcrudrest.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.io.Serializable;
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

/**
 *
 * @author yenca
 */
@Entity
@Table(name = "INTERNSHIP_OFFER")
@EntityListeners(AuditingEntityListener.class)

public class Internship_Offer implements Serializable {

    private long idInternship_Offer;
    private String idBusiness;
    private String position;
    private String description;
    private String perks;
    private String requirements;
    private Business business;
    private Set<Application> applications;

    @Id
    @GeneratedValue(
            strategy = GenerationType.AUTO,
            generator = "native"
    )
    @GenericGenerator(
            name = "native",
            strategy = "native"
    )
    @Column(name = "idInternship_Offer")
    public long getIdInternship_Offer() {
        return idInternship_Offer;
    }

    public void setIdInternship_Offer(long idInternship_Offer) {
        this.idInternship_Offer = idInternship_Offer;
    }

    @Column(name = "position", nullable = false)
    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Column(name = "description", nullable = false)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name = "idBusiness", nullable = false)
    public String getIdBusiness() {
        return idBusiness;
    }

    public void setIdBusiness(String idBusiness) {
        this.idBusiness = idBusiness;
    }

    @Column(name = "perks", nullable = false)
    public String getPerks() {
        return perks;
    }

    public void setPerks(String perks) {
        this.perks = perks;
    }

    @Column(name = "requirements", nullable = false)
    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    @ManyToOne
    @JoinColumn(name = "idBusiness", insertable = false, updatable = false)
    @JsonBackReference(value = "internship-business")
    public Business getBusiness() {
        return business;
    }

    public void setBusiness(Business business_) {
        this.business = business_;
    }

    @OneToMany(mappedBy = "offer", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonManagedReference(value = "application-offer")
    public Set<Application> getApplications() {
        return applications;
    }

    public void setApplications(Set<Application> applications) {
        this.applications = applications;
    }

}
