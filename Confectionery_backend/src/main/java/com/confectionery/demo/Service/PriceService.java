package com.confectionery.demo.Service;

import org.springframework.data.jpa.repository.JpaRepository;
import com.confectionery.demo.model.Price;
import java.util.List;


public interface PriceService extends JpaRepository<Price, Long> {
    // List <Price> getAllPrices();
}