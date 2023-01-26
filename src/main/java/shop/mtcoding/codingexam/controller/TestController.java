package shop.mtcoding.codingexam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
    
    @GetMapping("/")
    public String test(){
        return "test";
    }
}
