package com.confectionery.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.confectionery.demo.model.Prices;

@Repository
public interface PriceRepository extends JpaRepository<Prices, Long> {

}
