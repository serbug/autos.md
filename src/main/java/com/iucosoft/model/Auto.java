package com.iucosoft.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.*;

@Entity
@Table(name = "Auto")
public class Auto implements Serializable {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.AUTO) //for autonumber
    private int autoId;
    @Column
    private String marca;
    @Column
    private String model;
    @Column
    private Integer fabricatie;
    @Column
    private String combustibil;
    @Column
    private String culoare;
    @Column
    private String cutie;
    @Column
    private String pret;
    @Column
    private String type;
    @Column
    private String cilindree;
    @Column
    private String caroserie;
    @Column
    private String putere;
    @Column
    private String tractiune;
    @Column
    private String rulaj;

    @ElementCollection
    @CollectionTable(name = "dotari", joinColumns = @JoinColumn(name = "autoId"))
    @Transient
    private List<String> dotari;
    @Column
    private Integer nrLocuri;
    @Column
    private String fileName;
    @Column
    private byte[] content;

    @OneToMany(mappedBy = "auto", cascade = CascadeType.ALL)
    private Set<ImageAuto> imageAuto = new HashSet<ImageAuto>();

    public Auto() {
    }

    public Auto(int autoId, String marca, String model, Integer fabricatie, String combustibil, String culoare, String cutie, String pret, String type, String cilindree, String caroserie, String putere, String tractiune, String rulaj, List<String> dotari, Integer nrLocuri, String fileName, byte[] content) {
        super();
        this.autoId = autoId;
        this.marca = marca;
        this.model = model;
        this.fabricatie = fabricatie;
        this.combustibil = combustibil;
        this.culoare = culoare;
        this.cutie = cutie;
        this.pret = pret;
        this.type = type;
        this.cilindree = cilindree;
        this.caroserie = caroserie;
        this.putere = putere;
        this.tractiune = tractiune;
        this.rulaj = rulaj;
        this.dotari = dotari;
        this.nrLocuri = nrLocuri;
        this.fileName = fileName;
        this.content = content;
    }

    public int getAutoId() {
        return autoId;
    }

    public void setAutoId(int autoId) {
        this.autoId = autoId;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public Integer getFabricatie() {
        return fabricatie;
    }

    public void setFabricatie(Integer fabricatie) {
        this.fabricatie = fabricatie;
    }

    public String getCombustibil() {
        return combustibil;
    }

    public void setCombustibil(String combustibil) {
        this.combustibil = combustibil;
    }

    public String getCuloare() {
        return culoare;
    }

    public void setCuloare(String culoare) {
        this.culoare = culoare;
    }

    public String getCutie() {
        return cutie;
    }

    public void setCutie(String cutie) {
        this.cutie = cutie;
    }

    public String getPret() {
        return pret;
    }

    public void setPret(String pret) {
        this.pret = pret;
    }

    public Set<ImageAuto> getImageAuto() {
        return imageAuto;
    }

    public void setImageAuto(Set<ImageAuto> imageAuto) {
        this.imageAuto = imageAuto;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public byte[] getContent() {
        return content;
    }

    public void setContent(byte[] content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCilindree() {
        return cilindree;
    }

    public void setCilindree(String cilindree) {
        this.cilindree = cilindree;
    }

    public String getCaroserie() {
        return caroserie;
    }

    public void setCaroserie(String caroserie) {
        this.caroserie = caroserie;
    }

    public String getPutere() {
        return putere;
    }

    public void setPutere(String putere) {
        this.putere = putere;
    }

    public String getTractiune() {
        return tractiune;
    }

    public void setTractiune(String tractiune) {
        this.tractiune = tractiune;
    }

    public String getRulaj() {
        return rulaj;
    }

    public void setRulaj(String rulaj) {
        this.rulaj = rulaj;
    }

    public Integer getNrLocuri() {
        return nrLocuri;
    }

    public void setNrLocuri(Integer nrLocuri) {
        this.nrLocuri = nrLocuri;
    }

    public List<String> getDotari() {
        return dotari;
    }

    public void setDotari(List<String> dotari) {
        this.dotari = dotari;
    }

}
