package com.example.hall.mysql;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
public class UserController {

    @Autowired
    UserDao userDao;

    @Autowired
    private UserServices UserServices;

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


    @PostMapping(path="/addAll", produces = "application/json")
    public ResponseEntity<User> addUser(@Valid @RequestBody User user){
        System.out.println("[add one user]");
        return new ResponseEntity<>(UserServices.save(user), HttpStatus.CREATED);
    }

    @DeleteMapping(path="/deletebyid/{id}", produces = "application/json")
    public ResponseEntity<User> deleteUserById(@PathVariable Integer id){
        System.out.println("[delete one user]");
        return new ResponseEntity<>(UserServices.deleteById(id), HttpStatus.OK);
    }


//    @RequestMapping(value = "/addAll", method = RequestMethod.POST)
//    public String addUser(User user){
//
//        UserServices.save(user);
//        return "success";
//    }
}
