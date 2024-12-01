package com.confectionery.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "confections")
public class Confection {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String cname;
    private String type;
    private Boolean prizewinning;
}
