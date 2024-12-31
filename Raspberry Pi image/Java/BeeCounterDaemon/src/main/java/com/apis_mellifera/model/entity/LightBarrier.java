package com.apis_mellifera.model.entity;


import jakarta.persistence.*;

import java.io.Serializable;

/**
 * Table stores/enumerates the inner and outer light barriers that are associated to a beehive entrance
 */
@Entity
@NamedQueries({
        @NamedQuery(name="LightBarrier.findAll", query="SELECT lb FROM LightBarrier lb"),
        @NamedQuery(name="LightBarrier.findByHeId", query="SELECT lb FROM LightBarrier lb  WHERE lb.heId LIKE :heId")
})
@Table(name = "LIGHT_BARRIER")
public class LightBarrier implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "LB_ID", nullable = false)
    private Integer id;

    @Column(name = "LB_GPIO_PORT", nullable = false)
    private Integer gpioPort;

    @Column(name = "LB_HE_ID", nullable = false)
    private Integer heId;

    @Column(name = "LB_TYPE", nullable = false)
    private String type;

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setGpioPort(Integer gpioPort) {
        this.gpioPort = gpioPort;
    }

    public Integer getGpioPort() {
        return gpioPort;
    }

    public void setHeId(Integer heId) {
        this.heId = heId;
    }

    public Integer getHeId() {
        return heId;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return "LightBarrier{" +
                "id=" + id + '\'' +
                "gpioPort=" + gpioPort + '\'' +
                "heId=" + heId + '\'' +
                "type=" + type + '\'' +
                '}';
    }
}
