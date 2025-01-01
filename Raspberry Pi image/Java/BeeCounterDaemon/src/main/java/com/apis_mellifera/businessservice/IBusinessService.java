package com.apis_mellifera.businessservice;

import com.apis_mellifera.BeeCounterApp;
import com.apis_mellifera.model.entity.BeeTraffic;
import com.apis_mellifera.model.entity.HiveEntrance;
import com.apis_mellifera.model.entity.LightBarrier;
import jakarta.persistence.EntityManager;

import java.util.List;

public interface IBusinessService {
    List<HiveEntrance> getAllHiveEntrances(EntityManager entityManagerIn);

    List<LightBarrier> getAllLightBarriers(EntityManager entityManagerIn);

    List<BeeTraffic> getAllBeeTrafficEntries(EntityManager entityManagerIn);

}
