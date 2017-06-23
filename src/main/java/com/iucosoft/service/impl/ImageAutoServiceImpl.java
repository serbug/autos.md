package com.iucosoft.service.impl;

import com.iucosoft.dao.ImageAutoDao;
import com.iucosoft.model.ImageAuto;
import com.iucosoft.service.ImageAutoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("imageAutoService")
@Transactional
public class ImageAutoServiceImpl implements ImageAutoService {

    @Autowired
    ImageAutoDao imageAutoDao;

    @Override
    @Transactional
    public ImageAuto findById(int id) {
        return imageAutoDao.findById(id);
    }

    @Override
    @Transactional
    public List<ImageAuto> findAll() {
        return imageAutoDao.findAll();
    }

    @Override
    @Transactional
    public List<ImageAuto> findAllByUserId(int autoId) {
        return imageAutoDao.findAllByUserId(autoId);
    }

    @Override
    @Transactional
    public void saveImage(ImageAuto image) {
        imageAutoDao.save(image);
    }

    @Override
    @Transactional
    public void deleteById(int id) {
        imageAutoDao.deleteById(id);
    }

}
