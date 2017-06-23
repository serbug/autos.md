package com.iucosoft.service;

import com.iucosoft.model.Auto;

import java.util.List;

public interface AutoService {

    public void addAuto(Auto auto);

    public void editAuto(Auto auto);

    public void deleteAuto(int autoId);

    public Auto getAuto(int autoId);

    public List<Auto> getAllAuto();

    public List<Auto> getAllAutos(Long page);

    public List<Auto> getAllAutoByType(String type);

}
