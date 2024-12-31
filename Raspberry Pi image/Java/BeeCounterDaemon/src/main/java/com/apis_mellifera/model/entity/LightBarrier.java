package com.apis_mellifera.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Table stores/enumerates the inner and outer light barriers that are associated to a beehive entrance
 */
@Entity
@Table(name = "LIGHT_BARRIER")
public class LightBarrier implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "LB_ID", nullable = false)
    private Integer lbId;

    @Column(name = "LB_GPIO_PORT", nullable = false)
    private Integer lbGpioPort;

    @Column(name = "LB_HE_ID", nullable = false)
    private Integer lbHeId;

    @Column(name = "LB_TYPE", nullable = false)
    private String lbType;

    public void setLbId(Integer lbId) {
        this.lbId = lbId;
    }

    public Integer getLbId() {
        return lbId;
    }

    public void setLbGpioPort(Integer lbGpioPort) {
        this.lbGpioPort = lbGpioPort;
    }

    public Integer getLbGpioPort() {
        return lbGpioPort;
    }

    public void setLbHeId(Integer lbHeId) {
        this.lbHeId = lbHeId;
    }

    public Integer getLbHeId() {
        return lbHeId;
    }

    public void setLbType(String lbType) {
        this.lbType = lbType;
    }

    public String getLbType() {
        return lbType;
    }

    @Override
    public String toString() {
        return "LightBarrier{" +
                "lbId=" + lbId + '\'' +
                "lbGpioPort=" + lbGpioPort + '\'' +
                "lbHeId=" + lbHeId + '\'' +
                "lbType=" + lbType + '\'' +
                '}';
    }
}
