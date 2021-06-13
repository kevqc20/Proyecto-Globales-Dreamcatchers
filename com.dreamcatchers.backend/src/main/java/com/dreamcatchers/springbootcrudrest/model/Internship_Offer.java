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
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

/**
 *
 * @author yenca
 */
@Entity
@Table(name = "INTERNSHIP_OFFER")
@EntityListeners(AuditingEntityListener.class)

public class Internship_Offer implements Serializable {

    private String idInternship_Offer;
    private String BusinessId;
    private String position;
    private String description;
    private String perks;
    private String requirements;
    private Application application;

    @Id
    @Column(name = "idInternship_Offer")
    public String getIdInternship_Offer() {
        return idInternship_Offer;
    }

    public void setIdInternship_Offer(String idInternship_Offer) {
        this.idInternship_Offer = idInternship_Offer;
    }

    @Access(AccessType.FIELD)
    @OneToMany(mappedBy = "INTERNSHIP_OFFER", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<Business> business_;

    @OneToOne
    @JoinColumn(name="idInternship_Offer", referencedColumnName="idApplication") // Cambiar a foreign
    @JsonManagedReference
    public Application getApplication() {
        return application;
    }

    public void setApplication(Application application) {
        this.application = application;
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

    @Column(name = "business", nullable = false)
    public Set<Business> getBusiness_() {
        return business_;
    }

    public void setBusiness_(Set<Business> business_) {
        this.business_ = business_;
    }

    @Column(name = "BusinessId", nullable = false)
    public String getBusinessId() {
        return BusinessId;
    }
    
    public void setBusinessId(String BusinessId) {
        this.BusinessId = BusinessId;
    }

    
}
