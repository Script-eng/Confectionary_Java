package com.confectionery.demo.controller;
import com.confectionery.demo.Service.ConfectionService;
import com.confectionery.demo.model.Confection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ConfectionController {

    @Autowired
    private ConfectionService confectionService;

    @GetMapping("/getAllConfections")
    public List<Confection> getAllConfections() {
        return confectionService.findAll();
    }
    @GetMapping("/getConfectionByName/@name")
    public String getConfectionByName(@RequestParam String name) {
        return new String();
    }

    @GetMapping("/getConfectionByPrize/@prize")
    public String confectionsByPrize(@RequestParam String prize) {
        return new String();
    }
    
    @GetMapping("/getConfectionByType/@type")
    public String getConfectionByType(@RequestParam String type) {
        return new String();
    }
    
    
}