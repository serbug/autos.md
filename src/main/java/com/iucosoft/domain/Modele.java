package com.iucosoft.domain;

/**
 *
 * @author Anonyms
 */
public class Modele implements Comparable<Modele> {

    private Long id;
    private String name;
    private Marca marca;

    public Modele() {
        this.name = "unknown";
        this.marca = new Marca("unknown");
        this.id = System.currentTimeMillis();
    }

    public Modele(String name) {
        this.name = name;
        this.marca = new Marca("unknown");
        this.id = System.currentTimeMillis();
    }

    @Override
    public int compareTo(Modele o) {
        return this.name.compareTo(o.name);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        Modele other = (Modele) obj;
        if (this.name == null) {
            if (other.name != null) {
                return false;
            }
        } else if (!this.name.equals(other.name)) {
            return false;
        }
        if (this.marca == null) {
            if (other.marca != null) {
                return false;
            }
        } else if (!this.marca.equals(other.marca)) {
            return false;
        }
        return true;
    }

    public Long getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public Marca getMarca() {
        return this.marca;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result
                + ((this.name == null) ? 0 : this.name.hashCode());
        result = prime * result
                + ((this.marca == null) ? 0 : this.marca.hashCode());
        return result;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setMarca(Marca marca) {
        this.marca = marca;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Modele [ ");
        sb.append("id=").append(this.id).append(',');
        sb.append("name=").append(this.name).append(' ');
        sb.append("marca=").append(this.marca.getName()).append(' ');
        sb.append("]");
        return sb.toString();
    }
}
