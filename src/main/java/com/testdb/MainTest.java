package com.testdb;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.PrintWriter;

@Controller
public class MainTest {

    @RequestMapping("/hello")
    public String getMainPage(){
        return "Hello!";
    }

    @RequestMapping("/getSomethingHere")
    public String getSomethingHerePage(){
        return "dsfdsf";
    }
}
