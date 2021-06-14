package com.example.hall.mysql;

import freemarker.cache.StrongCacheStorage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    UserDao userDao;

//    http://localhost:8080/getAll
    @GetMapping("/getAll")
    public List getAll(){
        List all = userDao.findAll();
        return all;
    }

//    http://localhost:8080/add?name=asdasd&age=13  用postman测试
    @GetMapping("/add")
    public User add(@RequestParam("name") String name, @RequestParam("age") int age){
        User user =new User();
        user.setName(name);
        user.setAge(age);

        User save = userDao.save(user);
        return save;
    }

    //    http://localhost:8080/deleteOne?id=1  用postman测试
    @DeleteMapping("/deleteOne")
    public String deleteOne(@RequestParam("id") int id){
        userDao.deleteById(id);
        return "delete";
    }

    @GetMapping("/deleteAll")
    public String deleteAll(){
        userDao.deleteAll();
        return "delete All";
    }

}
