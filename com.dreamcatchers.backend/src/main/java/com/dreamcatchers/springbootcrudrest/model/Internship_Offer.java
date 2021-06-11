package com.dreamcatchers.springbootcrudrest.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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

    private Business business;
    private String idInternship_Offer;
    private String BusinessId;
    private String position;
    private String description;
    private String perks;
    private String requirements;

    @Id
    @Column(name = "idInternship_Offer")
    public String getIdInternship_Offer() {
        return idInternship_Offer;
    }

    public void setIdInternship_Offer(String idInternship_Offer) {
        this.idInternship_Offer = idInternship_Offer;
    }

    @OneToOne
    @JoinColumn(name = "BusinessId", referencedColumnName = "idBusiness")
    @JsonManagedReference
    public Business getBusiness() {
        return business;
    }

    public void setBusiness(Business business) {
        this.business = business;
    }

    public String getBusinessId() {
        return BusinessId;
    }

    public void setBusinessId(String BusinessId) {
        this.BusinessId = BusinessId;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPerks() {
        return perks;
    }

    public void setPerks(String perks) {
        this.perks = perks;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

}
