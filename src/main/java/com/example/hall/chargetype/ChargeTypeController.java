package com.example.hall.chargetype;

//public class ChargeTypeController {
//}

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

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

}
