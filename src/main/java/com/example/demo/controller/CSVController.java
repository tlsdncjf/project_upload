package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.CSVService;

@Controller
public class CSVController {

    @Autowired
    private CSVService csvService;

    @GetMapping("/readAndSaveToDB")
    @ResponseBody
    public String readAndSaveToDB() {
        return csvService.readAndSaveToDB();
    }
}