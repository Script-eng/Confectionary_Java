package com.confectionery.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import com.confectionery.demo.Service.PriceService;
import com.confectionery.demo.model.Prices;

import java.util.List;


@RestController
public class PriceController {

    @Autowired
    private PriceService priceService;

    @GetMapping("/getAllPrices")
    public List<Prices> getAllPrices() {
        System.out.print(priceService.getAllPrices());
        return priceService.getAllPrices();
    }

    @GetMapping("/getPriceByConfID/{confID}")
    public List<Prices> getPriceByConfID(@PathVariable String confID) {
        return priceService.getPriceByConfID(confID);
    }

    @GetMapping("/")
    public String getMethodName() {
        return "<h1>It works!</h1>";
    }
    
    
    
}