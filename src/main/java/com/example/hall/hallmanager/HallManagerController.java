package com.example.hall.hallmanager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.*;

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

    @DeleteMapping(path="/deletebyid/{id}", produces = "application/json")
    public ResponseEntity<HallManager> deleteHallManagerById(@PathVariable Integer id){
        System.out.println("[Delete one hall manager] parameters: "+ id);
        return new ResponseEntity<>(hallManagerServices.deleteById(id), HttpStatus.OK);
    }

}
