package com.apis_mellifera.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Table stores/enumerates the Beehive entrances
 */
@Entity
@Table(name = "HIVE_ENTRANCE")
public class HiveEntrance implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "HE_ID", nullable = false)
    private Integer heId;

    @Column(name = "HE_NUMBER", nullable = false)
    private Integer heNumber;

    @Column(name = "HE_NAME", nullable = false)
    private String heName;

    public void setHeId(Integer heId) {
        this.heId = heId;
    }

    public Integer getHeId() {
        return heId;
    }

    public void setHeNumber(Integer heNumber) {
        this.heNumber = heNumber;
    }

    public Integer getHeNumber() {
        return heNumber;
    }

    public void setHeName(String heName) {
        this.heName = heName;
    }

    public String getHeName() {
        return heName;
    }

    @Override
    public String toString() {
        return "HiveEntrance{" +
                "heId=" + heId + '\'' +
                "heNumber=" + heNumber + '\'' +
                "heName=" + heName + '\'' +
                '}';
    }
}
