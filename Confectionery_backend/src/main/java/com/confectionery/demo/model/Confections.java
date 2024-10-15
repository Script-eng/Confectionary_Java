package com.confectionery.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;

@Entity
public class Confections {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long confectionsID;
    private String cname;
    private String type;

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