package com.confectionery.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "prices")
public class Price {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "confid")
    private Long confectionId;
    
    private Double price;
    private String unit;
    
    @ManyToOne
    @JoinColumn(name = "confid", insertable = false, updatable = false)
    private Confection confection;
}
