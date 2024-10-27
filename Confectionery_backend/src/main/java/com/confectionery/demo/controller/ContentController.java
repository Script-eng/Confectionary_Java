package com.confectionery.demo.controller;
import com.confectionery.demo.model.Contents;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.confectionery.demo.Service.ContentService;

@RestController
public class ContentController{

    @Autowired
    private ContentService contentService;
    
    @GetMapping("/getAllContents")
    public List<Contents> getAllContents() {
        return contentService.getAllContents();
    }

    @GetMapping("/getContentByfree{free}")
    public List getContentByfree(@PathVariable String free) {
        return contentService.getContentByFree(free);
    }
    
    
    
}
