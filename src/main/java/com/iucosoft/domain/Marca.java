package com.iucosoft.domain;

import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;

/**
 *
 * @author Anonyms
 */
public class Marca implements Comparable<Marca> {

    private Long id;
    private String name;
    private Set<Modele> models = new TreeSet<>();

    public Marca() {
        this.name = "unknown";
        this.id = System.currentTimeMillis();
    }

    public Marca(String name) {
        this.name = name;
        this.id = System.currentTimeMillis();
    }

    public Marca addModel(Modele model) {
        this.models.add(model);
        model.setMarca(this);
        return this;
    }

    public Marca addModel(String name) {
        Modele model = new Modele(name);
        this.models.add(model);
        return this;
    }

    @Override
    public int compareTo(Marca o) {
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
        Marca other = (Marca) obj;
        if (this.name == null) {
            if (other.name != null) {
                return false;
            }
        } else if (!this.name.equals(other.name)) {
            return false;
        }
        return true;
    }

    public Set<Modele> getModels() {
        return Collections.unmodifiableSet(this.models);
    }

    public Modele getModel(String name) {
        Modele result = null;
        for (Modele c : this.models) {
            if (c.getName().equals(name)) {
                return c;
            }
        }
        return result;
    }

    public Long getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result
                + ((this.name == null) ? 0 : this.name.hashCode());
        return result;
    }

    public void setModels(Set<Modele> models) {
        this.models = models;

    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Marca [ ");
        sb.append("id=").append(this.id).append(',');
        sb.append("name=").append(this.name).append(' ');
        sb.append("n models=").append(this.models.size()).append(' ');
        sb.append("]");
        return sb.toString();
    }

}
