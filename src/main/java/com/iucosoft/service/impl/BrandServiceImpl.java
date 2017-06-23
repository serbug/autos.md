package com.iucosoft.service.impl;

import com.iucosoft.domain.Marca;
import com.iucosoft.domain.Modele;
import com.iucosoft.service.BrandService;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.springframework.stereotype.Service;

@Service
public class BrandServiceImpl implements BrandService {

    private Map<String, Marca> marcas = new LinkedHashMap<>();

    public BrandServiceImpl() {
        Marca marca = new Marca("Aston Martin");
        marca.addModel("RAPIDE");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("Audi");

        marca.addModel("80").addModel("100").addModel("A1");
        marca.addModel("A2").addModel("A3").addModel("A4");
        marca.addModel("A5").addModel("A6").addModel("A6 Allroad");
        marca.addModel("A7").addModel("A8").addModel("Q3");
        marca.addModel("Q5").addModel("Q7").addModel("Q7 V12");
        marca.addModel("RS5").addModel("RS6").addModel("S4");
        marca.addModel("S5").addModel("S6").addModel("S8").addModel("TT");

        this.marcas.put(marca.getName(), marca);

        marca = new Marca("BMW");
        marca.addModel("118").addModel("120").addModel("316");
        marca.addModel("318").addModel("320").addModel("325");
        marca.addModel("X1").addModel("X3").addModel("X3 M Sport Package");
        marca.addModel("X4").addModel("X5").addModel("X5 2.5D");
        marca.addModel("X6").addModel("X6M").addModel("Z4");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("CHEVROLET");
        marca.addModel("AVEO").addModel("BLAZER").addModel("CAPTIVA");
        marca.addModel("CRUZE").addModel("EPICA").addModel("KALOS");
        marca.addModel("MALIBU").addModel("MATIZ").addModel("ORLANDO");
        marca.addModel("SPARK").addModel("NUBIRA").addModel("THOE");
        marca.addModel("CAMARO").addModel("TRAILBLAZER");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("CITROEN");
        marca.addModel("BERLINGO").addModel("C2").addModel("C3");
        marca.addModel("C4").addModel("C5").addModel("C8");
        marca.addModel("DS").addModel("LAGUNA");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("DACIA");
        marca.addModel("DOKKER").addModel("DUSTER").addModel("LODGY");
        marca.addModel("LOGAN").addModel("LOGAN MCV");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("FIAT");
        marca.addModel("DOBLO").addModel("DUCATO").addModel("PANDA");
        marca.addModel("PUNTO").addModel("SCUDO");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("FORD");
        marca.addModel("BRONCO").addModel("C-MAX").addModel("ECONOLINE");
        marca.addModel("EDGE").addModel("FOCUS").addModel("FOCUS C-MAX");
        marca.addModel("FUSION").addModel("FIESTA").addModel("KUGA");
        marca.addModel("MONDEO").addModel("KA").addModel("MUSTANG");
        marca.addModel("S-MAX").addModel("TRANSIT").addModel("TRANSIT CONNECT");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("HONDA");
        marca.addModel("CIVIC").addModel("CR-V").addModel("HR-V");
        marca.addModel("INSIGHT").addModel("JAZZ").addModel("ODYSSEY");
        marca.addModel("PARTNER").addModel("RIDGELINE");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("HYUNDAI");
        marca.addModel("ATOS").addModel("COUPE").addModel("CRETA");
        marca.addModel("ELANTRA").addModel("EQUUS").addModel("GENESIS");
        marca.addModel("GETZ").addModel("GRAND SANTA FE").addModel("i10");
        marca.addModel("i20").addModel("i30").addModel("i40");
        marca.addModel("i35").addModel("MATRIX").addModel("SANTA FE");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("OPEL");
        marca.addModel("OMEGA").addModel("REKORD").addModel("TIGRA");
        marca.addModel("VECTRA").addModel("VIVARO").addModel("ZAFIRA");

        this.marcas.put(marca.getName(), marca);

        marca = new Marca("SUZUKI");
        marca.addModel("SX4").addModel("VITARA").addModel("GRAND VITARA");
        marca.addModel("SWIF");

        this.marcas.put(marca.getName(), marca);

        marca = new Marca("SKODA");
        marca.addModel("FABIA").addModel("FELICIA").addModel("OCTAVIA");
        marca.addModel("OCTAVIA RS").addModel("RAPID").addModel("ROOMSTER");
        marca.addModel("SUPERD").addModel("YETI");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("TOYOTA");
        marca.addModel("AURION").addModel("AURIS").addModel("AVALON");
        marca.addModel("CAMRY").addModel("COROLLA").addModel("COROLLA VERSO");
        marca.addModel("GETZ").addModel("GRAND SANTA FE").addModel("i10");
        marca.addModel("GT 86").addModel("PRIUS").addModel("LAND CRUISER");
        marca.addModel("RAV-4").addModel("VERSO").addModel("YARIS");
        this.marcas.put(marca.getName(), marca);

        marca = new Marca("VOLKSWAGEN");
        marca.addModel("AMAROK").addModel("BORA").addModel("CADDY");
        marca.addModel("FOX").addModel("GOLF").addModel("GOLF GTI");
        marca.addModel("GOLF PLUS").addModel("JETTA").addModel("MULTIVAN");
        marca.addModel("PASSAT").addModel("POLO").addModel("TIGUAN");
        marca.addModel("TOURAN").addModel("TOUAREG").addModel("TRANSPORTER");
        this.marcas.put(marca.getName(), marca);
    }

    @Override
    public Set<Marca> findAllMarcas() {
        Set<Marca> set = new LinkedHashSet<>();
        set.addAll(this.marcas.values());
        return set;
    }

    @Override
    public Set<Modele> findModelsForMarca(String marcaName) {
        Marca marca = this.marcas.get(marcaName);
        return marca.getModels();
    }

}
