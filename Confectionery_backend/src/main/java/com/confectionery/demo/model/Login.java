package com.confectionery.demo.model;

import jakarta.annotation.Generated;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Login {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY )
    private Long userid;

    private String userName;
    private String passWord;
    private String userRoles;

    
}
