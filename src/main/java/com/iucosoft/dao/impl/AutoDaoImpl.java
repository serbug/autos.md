package com.iucosoft.dao.impl;

import com.iucosoft.dao.AutoDao;
import com.iucosoft.model.Auto;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Repository
public class AutoDaoImpl implements AutoDao {

    private static final Logger LOG = Logger.getLogger(AutoDaoImpl.class.getName());

    private int resultPerPage = 10;

    @Autowired
    private SessionFactory session;

    @Override
    public void addAuto(Auto auto) {
        session.getCurrentSession().save(auto);
        LOG.log(Level.INFO, "Auto salvat cu success!!{0}", auto);
    }

    @Override
    public void editAuto(Auto auto) {

        session.getCurrentSession().update(auto);
        LOG.log(Level.INFO, "Auto editata cu success!!{0}", auto);
    }

    @Override
    public void deleteAuto(int autoId) {
        session.getCurrentSession().delete(getAuto(autoId));
        LOG.log(Level.INFO, "Auto stearsa cu success!!{0}", autoId);
    }

    @Override
    public Auto getAuto(int autoId) {
        LOG.log(Level.INFO, "Auto load cu success!!{0}", autoId);
        return (Auto) session.getCurrentSession().get(Auto.class, autoId);

    }

    @Override
    public List getAllAuto() {
        LOG.info("Lista auto ");
        return session.getCurrentSession().createQuery("from Auto").list();

    }

    @Override
    public List getAllAutos(Long page) {
        LOG.info("Lista auto ");
        return session.getCurrentSession().createQuery("from Auto").setFirstResult((int) (page * resultPerPage)).setMaxResults(resultPerPage).list();

    }

    @Override
    public List<Auto> getAllAutoByType(String type) {
        return session.getCurrentSession().createQuery("from Auto where type='" + type + "'").list();
    }

}
