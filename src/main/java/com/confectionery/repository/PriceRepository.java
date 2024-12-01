package com.confectionery.repository;

import com.confectionery.model.Price;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


public interface PriceRepository extends JpaRepository<Price, Long> {
    List<Price> findByConfectionId(Long confectionId);
}