package shop.mtcoding.codingexam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Error {
    
    @GetMapping("/missing")
    public String missing(){
        return "error/error";
    }
}
