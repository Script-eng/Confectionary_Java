package com.confectionery.demo.controller;
import com.confectionery.demo.Service.ConfectionService;
import com.confectionery.demo.model.Confection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ConfectionController {

    @Autowired
    private ConfectionService confectionService;

    @GetMapping("/getAllConfections")
    public List<Confection> getAllConfections() {
        return confectionService.findAll();
    }
    
}