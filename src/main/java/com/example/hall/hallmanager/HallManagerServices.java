package com.example.hall.hallmanager;

import com.example.hall.services.Services;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@AllArgsConstructor
@Service
@Transactional
public class HallManagerServices implements Services<HallManager> {

    @Autowired
    HallManagerDao hallManagerDao;

    @Override
    public HallManager save(HallManager hallManager) {
        hallManagerDao.save(hallManager);
        return hallManager;
    }

    @Override
    public HallManager deleteById(Integer anId) {
        return null;
    }
}
