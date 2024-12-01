package com.confectionery.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.confectionery.model.Price;
import com.confectionery.repository.ConfectionRepository;
import com.confectionery.repository.PriceRepository;

import exception.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PriceService {
    private final PriceRepository priceRepository;
    private final ConfectionRepository confectionRepository;

    public List<Price> getAllPrices() {
        return priceRepository.findAll();
    }

    public Price getPriceById(Long id) {
        return priceRepository.findById(id)
            .orElseThrow(() -> new ResourceNotFoundException("Price not found"));
    }

    public List<Price> getPricesByConfectionId(Long confectionId) {
        return priceRepository.findByConfectionId(confectionId);
    }

    public Price createPrice(Price price) {
        confectionRepository.findById(price.getConfectionId())
            .orElseThrow(() -> new ResourceNotFoundException("Confection not found"));
        return priceRepository.save(price);
    }

    public Price updatePrice(Long id, Price priceDetails) {
        Price price = getPriceById(id);
        price.setConfectionId(priceDetails.getConfectionId());
        price.setPrice(priceDetails.getPrice());
        price.setUnit(priceDetails.getUnit());
        return priceRepository.save(price);
    }

    public void deletePrice(Long id) {
        Price price = getPriceById(id);
        priceRepository.delete(price);
    }
}