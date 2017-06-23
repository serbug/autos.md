package com.iucosoft.service;

import com.iucosoft.domain.Marca;
import com.iucosoft.domain.Modele;
import java.util.Set;

/**
 *
 * @author Anonyms
 */
public interface BrandService {

    public Set<Marca> findAllMarcas();

    public Set<Modele> findModelsForMarca(String marca);
}
