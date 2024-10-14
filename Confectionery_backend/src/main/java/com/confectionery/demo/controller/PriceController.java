package com.confectionery.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import com.confectionery.demo.Service.PriceService;
import com.confectionery.demo.model.Price;

import java.util.List;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
public class PriceController {

    @Autowired
    private PriceService priceService;

    @GetMapping("/getAllPrices")
    public List<Price> getAllPrices() {
        return priceService.findAll();
    }

    @GetMapping("/getPriceByConfID/@confID")
    public String getPriceByConfID(@RequestParam String confID) {
        return new String();
    }    


    @GetMapping("/echo")
    public String echo(@RequestParam(value = "name", defaultValue = "World") String name) {
        return String.format("Hello %s!", name);
    }
    
    
}