package com.iucosoft.dao.impl;

import com.iucosoft.dao.AbstractDao;
import com.iucosoft.dao.ImageAutoDao;
import com.iucosoft.model.ImageAuto;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

@Repository("imageAutoDao")
public class ImageAutoDaoImpl extends AbstractDao<Integer, ImageAuto> implements ImageAutoDao {

    @SuppressWarnings("unchecked")
    @Override
    public List<ImageAuto> findAll() {
        Criteria crit = createEntityCriteria();
        return (List<ImageAuto>) crit.list();
    }

    @Override
    public void save(ImageAuto image) {
        persist(image);
    }

    @Override
    public ImageAuto findById(int id) {
        return getByKey(id);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<ImageAuto> findAllByUserId(int autoId) {
        Criteria crit = createEntityCriteria();
        Criteria autoCriteria = crit.createCriteria("auto");
        autoCriteria.add(Restrictions.eq("id", autoId));
        return (List<ImageAuto>) crit.list();
    }

    @Override
    public void deleteById(int id) {
        ImageAuto image = getByKey(id);
        delete(image);
    }

}
