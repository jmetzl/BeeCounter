package com.apis_mellifera.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

/**
 * Table stores the date/time of a bee passing a light barrier when arrive/departure to/from a beehive.
 */
@Entity
@Table(name = "BEE_TRAFFIC")
public class BeeTraffic implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "BT_ID", nullable = false)
    private Integer btId;

    @Column(name = "BT_LIGHT_BARRIER_CROSS_DATE_TIME", nullable = false)
    private Date btLightBarrierCrossDateTime;

    @Column(name = "BT_LB_ID", nullable = false)
    private Integer btLbId;

    public void setBtId(Integer btId) {
        this.btId = btId;
    }

    public Integer getBtId() {
        return btId;
    }

    public void setBtLightBarrierCrossDateTime(Date btLightBarrierCrossDateTime) {
        this.btLightBarrierCrossDateTime = btLightBarrierCrossDateTime;
    }

    public Date getBtLightBarrierCrossDateTime() {
        return btLightBarrierCrossDateTime;
    }

    public void setBtLbId(Integer btLbId) {
        this.btLbId = btLbId;
    }

    public Integer getBtLbId() {
        return btLbId;
    }

    @Override
    public String toString() {
        return "BeeTraffic{" +
                "btId=" + btId + '\'' +
                "btLightBarrierCrossDateTime=" + btLightBarrierCrossDateTime + '\'' +
                "btLbId=" + btLbId + '\'' +
                '}';
    }
}
