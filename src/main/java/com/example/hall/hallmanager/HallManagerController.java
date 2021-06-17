package com.example.hall.hallmanager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
public class HallManagerController {

    @Autowired
    private HallManagerServices hallManagerServices;

    @PostMapping(path="/addHallManager", produces = "application/json")
    public ResponseEntity<HallManager> addManagement(@Valid @RequestBody HallManager hallManager){
        System.out.println("[add one hall]");
        return new ResponseEntity<>(hallManagerServices.save(hallManager), HttpStatus.CREATED);
    }

}
