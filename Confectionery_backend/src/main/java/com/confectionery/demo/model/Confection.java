package com.confectionery.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_confections")
public class Confection {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "confectionsID", nullable = false, updatable = false)
    private Long confectionsID;

    @Column(name = "cname", nullable = false, columnDefinition = "TEXT")
    private String cname;

    @Column(name = "type", nullable = false, columnDefinition = "TEXT")
    private String type;

    @Column(name = "prizeWinning", nullable = false)
    private Boolean prizeWinning;

    // Getters and setters
    public Long getConfectionsID() {
        return confectionsID;
    }

    public void setConfectionsID(Long confectionsID) {
        this.confectionsID = confectionsID;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Boolean getPrizeWinning() {
        return prizeWinning;
    }

    public void setPrizeWinning(Boolean prizeWinning) {
        this.prizeWinning = prizeWinning;
    }
}