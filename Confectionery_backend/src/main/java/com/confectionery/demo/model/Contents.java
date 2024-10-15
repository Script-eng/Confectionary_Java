package com.confectionery.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;

@Entity
public class Contents {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long contentID;

    private Long confID;

    private String free;

    // Getters and setters
    public Long getContentID() {
        return contentID;
    }

    public void setContentID(Long contentID) {
        this.contentID = contentID;
    }

    public Long getConfID() {
        return confID;
    }

    public void setConfID(Long confID) {
        this.confID = confID;
    }

    public String getFree() {
        return free;
    }

    public void setFree(String free) {
        this.free = free;
    }
}