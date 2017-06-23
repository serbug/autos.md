package com.iucosoft.service.impl;

import com.iucosoft.dao.AutoDao;
import com.iucosoft.model.Auto;
import com.iucosoft.service.AutoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service

public class AutoServiceImpl implements AutoService {

    @Autowired
    private AutoDao autoDao;

    @Override
    @Transactional
    public void addAuto(Auto auto) {
        autoDao.addAuto(auto);
    }

    @Override
    @Transactional
    public void editAuto(Auto auto) {
        autoDao.editAuto(auto);
    }

    @Override
    @Transactional
    public void deleteAuto(int autoId) {
        autoDao.deleteAuto(autoId);
    }

    @Override
    @Transactional
    public Auto getAuto(int autoId) {
        return autoDao.getAuto(autoId);
    }

    @Override
    @Transactional
    public List<Auto> getAllAuto() {
        return autoDao.getAllAuto();
    }

    @Override
    @Transactional
    public List<Auto> getAllAutos(Long page) {
        return autoDao.getAllAutos(page);
    }

    @Override
    @Transactional
    public List<Auto> getAllAutoByType(String type) {
        return autoDao.getAllAutoByType(type);
    }

}
