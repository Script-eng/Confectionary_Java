package com.confectionery.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "contents")
public class Content {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "confid")
    private Long confectionId;
    
    private String free;
    
    @ManyToOne
    @JoinColumn(name = "confid", insertable = false, updatable = false)
    private Confection confection;
}