package com.confectionery.demo.controller;
import com.confectionery.demo.Service.ConfectionService;
import com.confectionery.demo.model.Confections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class ConfectionController {

    @Autowired
    private ConfectionService confectionService;

    @GetMapping("/getAllConfections")
    public List getAllConfections() {
        return confectionService.getAllConfections();
    }

    @GetMapping("/getConfectionByName/{name}")
    public List<Confections> getConfectionByName(@PathVariable String name) {
        return confectionService.getConfectionByName(name);
    }

    @GetMapping("/getConfectionByPrize/{prize}")
    public List getConfectionByPrize(@PathVariable int prize) {
        return confectionService.getConfectionByPrize(prize);
    }

    @GetMapping("/getConfectionByType/{type}")
    public List getConfectionByType(@PathVariable String type) {
        return confectionService.getConfectionByType(type);
    }


    
}