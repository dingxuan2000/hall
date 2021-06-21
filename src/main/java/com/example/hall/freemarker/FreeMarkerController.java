package com.example.hall.freemarker;

import com.example.hall.mysql.User;
import com.example.hall.mysql.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class FreeMarkerController {

    @Autowired
    private UserDao userDao;

    @GetMapping("/index")
    public String index(ModelMap map){
        List<User> userList = userDao.findAll();
        map.put("userList1", userList);
        return "/index/index";
    }

    @GetMapping("/commManager")
    public String index2(ModelMap map){
        List<User> userList2 = userDao.findAll();
        map.put("userList2", userList2);
        return "/index/commManager";
    }


//    ModelAndView page1(){
//        ModelAndView mv = new ModelAndView();
//        mv.addObject("title","子页面标题");
//        mv.setViewName("index/commManager");
//        return mv;
//    }

    @GetMapping("/test")
    public String test(){
        return "/test/test";
    }

    @GetMapping("/test2")
    public String test2(){
        return "/test/test2";
    }
}
