package com.confectionery.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.confectionery.demo.Service.LoginService;
import com.confectionery.demo.model.Login;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@RestController
public class LoginController {

    @Autowired
    private LoginService loginService;

    @GetMapping("/getUser/{userName}/{passWord}")
    public List <Login> getUser(@PathVariable String userName,@PathVariable String passWord) {
        return loginService.isUser(userName,passWord);
    }
    
    
}
