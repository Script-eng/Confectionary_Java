package com.confectionery.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.confectionery.demo.model.Confections;

@Repository
public interface ConfectionRepository extends JpaRepository<Confections, Long> {
    
}
