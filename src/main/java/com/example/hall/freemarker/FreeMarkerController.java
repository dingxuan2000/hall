package com.example.hall.freemarker;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FreeMarkerController {

    @GetMapping("/index")
    public String index(){
        return "/index/index";
    }
}
