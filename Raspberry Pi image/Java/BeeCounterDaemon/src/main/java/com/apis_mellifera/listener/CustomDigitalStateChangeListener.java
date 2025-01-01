package com.apis_mellifera.listener;

import com.apis_mellifera.businessservice.IBusinessService;
import com.apis_mellifera.model.entity.LightBarrier;
import com.pi4j.io.gpio.digital.DigitalStateChangeEvent;
import com.pi4j.io.gpio.digital.DigitalStateChangeListener;
import jakarta.persistence.EntityManager;

public class CustomDigitalStateChangeListener implements DigitalStateChangeListener {

    private EntityManager entityManager;
    private LightBarrier lightBarrier;

    public CustomDigitalStateChangeListener(EntityManager entityManager, LightBarrier lightBarrier) {
        super();
        this.entityManager = entityManager;
        this.lightBarrier = lightBarrier;
    }

    @Override
    public void onDigitalStateChange(DigitalStateChangeEvent event) {

        System.out.println("DIGITAL INPUT [");
        System.out.println(event.source());
        System.out.println("] STATE CHANGE: ");
        //System.out.println(event.state());

        IBusinessService.storeLightBarrierCrossEvent(entityManager, lightBarrier.getId());

    }
}
