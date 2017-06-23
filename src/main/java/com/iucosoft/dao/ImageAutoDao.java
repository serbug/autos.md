package com.iucosoft.dao;

import com.iucosoft.model.ImageAuto;
import java.util.List;

/**
 *
 * @author Anonyms
 */
public interface ImageAutoDao {

    List<ImageAuto> findAll();

    ImageAuto findById(int id);

    void save(ImageAuto image);

    List<ImageAuto> findAllByUserId(int autoId);

    void deleteById(int id);
}
