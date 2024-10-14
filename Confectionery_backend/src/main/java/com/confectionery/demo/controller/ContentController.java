package com.confectionery.demo.controller;
import com.confectionery.demo.model.Content;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.confectionery.demo.Service.ContentService;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ContentController{

    @Autowired
    private ContentService contentService;

    @GetMapping("/getAllContents")
    public List<Content> getAllContents() {
        return contentService.findAll();
    }

    @GetMapping("/getContentByfree/@free")
    public String getContentByfree(@RequestParam String free) {
        return new String();
    }
    
    
    
}
