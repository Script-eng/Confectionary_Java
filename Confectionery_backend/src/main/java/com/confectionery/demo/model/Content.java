package com.confectionery.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_contents")
public class Content {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "contentID", nullable = false, updatable = false)
    private Long contentID;

    @Column(name = "confID", nullable = false)
    private Long confID;

    @Column(name = "free", nullable = false, columnDefinition = "TEXT")
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