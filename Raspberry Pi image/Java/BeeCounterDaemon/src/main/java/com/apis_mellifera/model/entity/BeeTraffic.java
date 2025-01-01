package com.apis_mellifera.model.entity;


import jakarta.persistence.*;

import java.io.Serializable;
import java.util.Date;

/**
 * Table stores the date/time of a bee passing a light barrier when arrive/departure to/from a beehive.
 */
@Entity
@NamedQueries({
        @NamedQuery(name="BeeTraffic.findAll", query="SELECT bt FROM BeeTraffic bt"),
        @NamedQuery(name="BeeTraffic.findByLbId", query="SELECT bt FROM BeeTraffic bt  WHERE bt.lbId LIKE :lbId")
})
@Table(name = "BEE_TRAFFIC")
public class BeeTraffic implements Serializable {

    private static final long serialVersionUID = 1L;


    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "my_sequence_generator")
    @SequenceGenerator(name = "my_sequence_generator", sequenceName = "BEE_TRAFFIC_S", allocationSize = 1)
    @Column(name = "BT_ID")
    private Integer id;

    @Column(name = "BT_LIGHT_BARRIER_CROSS_DATE_TIME", nullable = false)
    private Date lightBarrierCrossDateTime;

    @Column(name = "BT_LB_ID", nullable = false)
    private Integer lbId;

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setLightBarrierCrossDateTime(Date lightBarrierCrossDateTime) {
        this.lightBarrierCrossDateTime = lightBarrierCrossDateTime;
    }

    public Date getLightBarrierCrossDateTime() {
        return lightBarrierCrossDateTime;
    }

    public void setLbId(Integer lbId) {
        this.lbId = lbId;
    }

    public Integer getLbId() {
        return lbId;
    }

    @Override
    public String toString() {
        return "BeeTraffic{" +
                "id=" + id + '\'' +
                "lightBarrierCrossDateTime=" + lightBarrierCrossDateTime + '\'' +
                "lbId=" + lbId + '\'' +
                '}';
    }
}
