package com.example.nhom5webapp_laptopshop.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class HelloController {
    

    @RequestMapping("/")
    public String requestMethodName() {
        return "Hello";
    }
    
}
