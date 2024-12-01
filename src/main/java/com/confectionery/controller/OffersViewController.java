package com.confectionery.controller;

import com.confectionery.model.Confection;
import com.confectionery.model.Content;
import com.confectionery.model.Price;
import com.confectionery.service.ConfectionService;
import com.confectionery.service.ContentService;
import com.confectionery.service.PriceService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
public class OffersViewController {
    private final ConfectionService confectionService;
    private final ContentService contentService;
    private final PriceService priceService;

    @GetMapping("/offers")
    public String index(Model model) {
        List<Confection> confections = confectionService.getAllConfections();
        
        Map<Long, List<Content>> confectionContents = contentService.getAllContents()
            .stream()
            .collect(Collectors.groupingBy(Content::getConfectionId));
            
        Map<Long, List<Price>> confectionPrices = priceService.getAllPrices()
            .stream()
            .collect(Collectors.groupingBy(Price::getConfectionId));
        
        model.addAttribute("confections", confections);
        model.addAttribute("confectionContents", confectionContents);
        model.addAttribute("confectionPrices", confectionPrices);
        
        return "confectionery/index";
    }
}
