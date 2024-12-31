package com.apis_mellifera.model.entity;


import jakarta.persistence.*;

import java.io.Serializable;


/**
 * Table stores/enumerates the Beehive entrances
 */
@Entity
@NamedQueries({
        @NamedQuery(name="HiveEntrance.findAll", query="SELECT he FROM HiveEntrance he"),
        @NamedQuery(name="HiveEntrance.findById", query="SELECT he FROM HiveEntrance he  WHERE he.id LIKE :id")
})
@Table(name = "HIVE_ENTRANCE")
public class HiveEntrance implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "HE_ID", nullable = false)
    private Integer id;

    @Column(name = "HE_NUMBER", nullable = false)
    private Integer number;

    @Column(name = "HE_NAME", nullable = false)
    private String name;

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getNumber() {
        return number;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "HiveEntrance{" +
                "id=" + id + '\'' +
                "number=" + number + '\'' +
                "name=" + name + '\'' +
                '}';
    }
}
