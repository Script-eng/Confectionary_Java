package com.confectionery.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Confections {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long confectionID;
    private String cname;
    private String type;

    private int prizeWinning;

    // Getters and setters
    public Long getConfectionsID() {
        return confectionID;
    }

    public void setConfectionsID(Long confectionID) {
        this.confectionID = confectionID;
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

    public int getPrizeWinning() {
        return prizeWinning;
    }

    public void setPrizeWinning(int prizeWinning) {
        this.prizeWinning = prizeWinning;
    }
}