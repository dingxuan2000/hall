package com.example.hall.chargetype;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
public class ChargeTypeController {

    @Autowired
    private ChargeTypeServices chargeTypeServices;

    @PostMapping(path="/addChargeType", produces = "application/json")
    public ResponseEntity<ChargeType> addManagement(@Valid @RequestBody ChargeType chargeType){
        System.out.println("[add one chargeType]");
        return new ResponseEntity<>(chargeTypeServices.save(chargeType), HttpStatus.CREATED);
    }

    @DeleteMapping(path="/deleteChargeType/{id}", produces = "application/json")
    public ResponseEntity<ChargeType> deleteChargeTypeById(@PathVariable Integer id){
        System.out.println("[Delete one hall manager] parameters: "+ id);
        return new ResponseEntity<>(chargeTypeServices.deleteById(id), HttpStatus.OK);
    }

}
