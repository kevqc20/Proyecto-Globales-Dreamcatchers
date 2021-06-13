package com.dreamcatchers.springbootcrudrest.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.io.Serializable;
import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

/**
 *
 * @author yenca
 */
@Entity
@Table(name = "BUSINESS")
@EntityListeners(AuditingEntityListener.class)

public class Business implements Serializable {

    private User user;
    private String idBusiness;
    private String name;
    private String description;
    private String address;
    private String headquarters;
    private String website;
    private String type;
    private String size;
    private float revenue;
    private String calification;
    private String perks;
 
    @Id
    @Column(name = "idBusiness")
    public String getIdBusiness() {
        return idBusiness;
    }

    public void setIdBusiness(String idBusiness) {
        this.idBusiness = idBusiness;
    }
    
    
    @OneToOne
    @PrimaryKeyJoinColumn(name="idBusiness", referencedColumnName="idUser") // Cambiar a foreign
    @JsonManagedReference
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    @Access(AccessType.FIELD)
    @ManyToOne
    @JoinColumn (name="idInternship_Offer",nullable=false,unique=true)
    private Internship_Offer Internship_Offer;

    @Column(name = "name", nullable = false)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "description", nullable = false)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name = "address", nullable = false)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name = "headquarters", nullable = false)
    public String getHeadquarters() {
        return headquarters;
    }

    public void setHeadquarters(String headquarters) {
        this.headquarters = headquarters;
    }

    @Column(name = "website", nullable = false)
    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    @Column(name = "type", nullable = false)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Column(name = "size", nullable = false)
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    @Column(name = "revenue", nullable = false)
    public float getRevenue() {
        return revenue;
    }

    public void setRevenue(float revenue) {
        this.revenue = revenue;
    }

    @Column(name = "calification", nullable = false)
    public String getCalification() {
        return calification;
    }

    public void setCalification(String calification) {
        this.calification = calification;
    }

    @Column(name = "perks", nullable = false)
    public String getPerks() {
        return perks;
    }

    public void setPerks(String perks) {
        this.perks = perks;
    }

    @Column(name = "Internship_Offer", nullable = false)
    public Internship_Offer getInternship_Offers() {
        return Internship_Offer;
    }

    public void setInternship_Offers(Internship_Offer Internship_Offers) {
        this.Internship_Offer = Internship_Offers;
    }

}
