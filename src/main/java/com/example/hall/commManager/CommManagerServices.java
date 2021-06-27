package com.example.hall.commManager;

import com.example.hall.services.Services;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@AllArgsConstructor
@Service
@Transactional
public class CommManagerServices implements Services<CommManager> {

    @Autowired
    CommManagerDao commManagerDao;

    @Override
    public CommManager save(CommManager commManager) {
        commManagerDao.save(commManager);
        return commManager;
    }

    @Override
    public CommManager deleteById(Integer id) {

        if (!commManagerDao.existsById(id)) {
            System.out.println("NotFoundException: " + "id is not in the DB");
        }

        try {
            CommManager commManager = commManagerDao.findById(id).orElse(null);
            commManagerDao.deleteById(id);
            return commManager;

        } catch (Exception e) {
            System.out.println("VehicleServiceValidationException");
            return null;
        }
    }
}


