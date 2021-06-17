package com.example.hall.chargetype;


import com.example.hall.services.Services;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@AllArgsConstructor
@Service
@Transactional
public class ChargeTypeServices implements Services<ChargeType> {

    @Autowired
    ChargeTypeDao chargeTypeDao;

    @Override
    public ChargeType save(ChargeType chargeType) {
        chargeTypeDao.save(chargeType);
        return chargeType;
    }

    @Override
    public ChargeType deleteById(Integer anId) {
        return null;
    }
}

//public class ChargeTypeServices {
//}
