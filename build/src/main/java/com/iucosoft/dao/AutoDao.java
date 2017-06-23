package com.iucosoft.dao;

import com.iucosoft.model.Auto;

import java.util.List;

/**
 * @author Anonyms
 */
public interface AutoDao {

    public void addAuto(Auto auto);

    public void editAuto(Auto auto);

    public void deleteAuto(int autoId);

    public Auto getAuto(int autoId);

    public List<Auto> getAllAuto();

    public List<Auto> getAllAutos(Long page);

    public List<Auto> getAllAutoByType(String type);

}
