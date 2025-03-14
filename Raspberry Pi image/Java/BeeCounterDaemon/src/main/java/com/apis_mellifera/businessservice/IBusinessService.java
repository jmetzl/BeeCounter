package com.apis_mellifera.businessservice;

import com.apis_mellifera.BeeCounterApp;
import com.apis_mellifera.model.entity.BeeTraffic;
import com.apis_mellifera.model.entity.HiveEntrance;
import com.apis_mellifera.model.entity.LightBarrier;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;

import java.util.Date;
import java.util.List;

public interface IBusinessService {

    public List<HiveEntrance> getAllHiveEntrances(EntityManager entityManagerIn);

    public List<LightBarrier> getAllLightBarriers(EntityManager entityManagerIn);

    public List<BeeTraffic> getAllBeeTrafficEntries(EntityManager entityManagerIn);

    public static void storeLightBarrierCrossEvent(EntityManager entityManagerIn, Integer lightBarrierIdIn) {
        EntityTransaction tx = entityManagerIn.getTransaction();
        tx.begin();

        BeeTraffic beeTraffic = new BeeTraffic();
        beeTraffic.setLbId(lightBarrierIdIn);
        Date lightBarrierCrossDateTime = new Date();
        beeTraffic.setLightBarrierCrossDateTime(lightBarrierCrossDateTime);
        entityManagerIn.persist(beeTraffic);
        tx.commit();
    }
}
