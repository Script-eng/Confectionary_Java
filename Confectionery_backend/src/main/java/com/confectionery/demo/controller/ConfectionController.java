package com.confectionery.demo.controller;
import com.confectionery.demo.Service.ConfectionService;
import com.confectionery.demo.model.Confections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ConfectionController {

    @Autowired
    private ConfectionService confectionService;

    @GetMapping("/getAllConfections")
    public List<Confections> getAllConfections() {
        return confectionService.getAllConfections();
    }
    @GetMapping("/getConfectionByName/{name}")
    public String getConfectionByName(@PathVariable String name) {
        return confectionService.getConfectionByName();
    }

    @GetMapping("/getConfectionByPrize/{prize}")
    public String confectionsByPrize(@PathVariable String prize) {
        return new String();
    }
    
    @GetMapping("/getConfectionByType/{type}")
    public String getConfectionByType(@PathVariable String type) {
        return new String();
    }
    
    
}