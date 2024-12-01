package com.confectionery.controller;

import com.confectionery.model.Price;
import com.confectionery.service.PriceService;

import lombok.RequiredArgsConstructor;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/prices")
@RequiredArgsConstructor
public class PriceController {
    private final PriceService priceService;

    @GetMapping
    public List<Price> getAllPrices() {
        return priceService.getAllPrices();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Price> getPriceById(@PathVariable Long id) {
        return ResponseEntity.ok(priceService.getPriceById(id));
    }

    @GetMapping("/confection/{confectionId}")
    public List<Price> getPricesByConfectionId(@PathVariable Long confectionId) {
        return priceService.getPricesByConfectionId(confectionId);
    }

    @PostMapping
    public ResponseEntity<Price> createPrice(@RequestBody Price price) {
        return ResponseEntity.ok(priceService.createPrice(price));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Price> updatePrice(
            @PathVariable Long id, 
            @RequestBody Price priceDetails) {
        return ResponseEntity.ok(priceService.updatePrice(id, priceDetails));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deletePrice(@PathVariable Long id) {
        priceService.deletePrice(id);
        return ResponseEntity.ok().build();
    }
}
