package com.iucosoft.service;

import com.iucosoft.model.ImageAuto;
import java.util.List;

/**
 *
 * @author Anonyms
 */
public interface ImageAutoService {

    ImageAuto findById(int id);

    List<ImageAuto> findAll();

    List<ImageAuto> findAllByUserId(int id);

    void saveImage(ImageAuto image);

    void deleteById(int id);
}
