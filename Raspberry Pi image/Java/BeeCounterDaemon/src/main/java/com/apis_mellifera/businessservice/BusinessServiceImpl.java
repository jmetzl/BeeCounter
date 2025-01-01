package com.apis_mellifera.businessservice;

import com.apis_mellifera.model.entity.BeeTraffic;
import com.apis_mellifera.model.entity.HiveEntrance;
import com.apis_mellifera.model.entity.LightBarrier;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

import java.util.List;

public class BusinessServiceImpl implements IBusinessService {

    @Override
    public List<HiveEntrance> getAllHiveEntrances(EntityManager entityManagerIn) {
        TypedQuery<HiveEntrance> hiveEntranceQuery = entityManagerIn.createNamedQuery("HiveEntrance.findAll", HiveEntrance.class);
        List<HiveEntrance> hiveEntrances = hiveEntranceQuery.getResultList();
        return hiveEntrances;
    }

    @Override
    public List<LightBarrier> getAllLightBarriers(EntityManager entityManagerIn) {
        TypedQuery<LightBarrier> lightBarrierQuery = entityManagerIn.createNamedQuery("LightBarrier.findAll", LightBarrier.class);
        List<LightBarrier> lightBarriers = lightBarrierQuery.getResultList();
        return lightBarriers;
    }

    @Override
    public List<BeeTraffic> getAllBeeTrafficEntries(EntityManager entityManagerIn) {
        TypedQuery<BeeTraffic> beeTraficQuery = entityManagerIn.createNamedQuery("BeeTraffic.findAll", BeeTraffic.class);
        List<BeeTraffic> beeTrafficList = beeTraficQuery.getResultList();
        return beeTrafficList;
    }
}
