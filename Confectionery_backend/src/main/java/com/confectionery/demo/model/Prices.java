package com.confectionery.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Prices {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long priceID;

    private Long confID;

    private Long price;

    private Long unit;

    // Getters and setters
    public Long getPriceID() {
        return priceID;
    }

    public void setPriceID(Long priceID) {
        this.priceID = priceID;
    }

    public Long getConfID() {
        return confID;
    }

    public void setConfID(Long confID) {
        this.confID = confID;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getUnit() {
        return unit;
    }

    public void setUnit(Long unit) {
        this.unit = unit;
    }
}