
package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/health")
    public String health() {
        return "Application is running successfully!";
    }

    @GetMapping("/")
    public String root() {
        return "Welcome to DevOps Portfolio App";
    }
}
