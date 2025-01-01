package com.apis_mellifera;


import com.apis_mellifera.businessservice.BusinessServiceImpl;
import com.apis_mellifera.listener.CustomDigitalStateChangeListener;
import com.apis_mellifera.model.entity.LightBarrier;
import com.pi4j.Pi4J;
import com.pi4j.context.Context;
import com.pi4j.io.gpio.digital.*;
import jakarta.persistence.*;

import java.util.List;
import java.util.Properties;

public class BeeCounterApp {
    public static void main(String[] args) {
        //PersistenceProvider provider = new PersistenceProvider();
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("beecounterPU");
        EntityManager entityManager = factory.createEntityManager();

        // Retrieve all Light Barriers
        BusinessServiceImpl businessService = new BusinessServiceImpl();
        List<LightBarrier> lightBarriers = businessService.getAllLightBarriers(entityManager);

        // Store a Light Barrier Cross event for each of the Light Barriers
        /* for (LightBarrier lightBarrier : lightBarriers) {
            businessService.storeLightBarrierCrossEvent(entityManager, lightBarrier.getId());
        } */

        initializeGpioPortforLightBarriers(entityManager,lightBarriers);
    }



    private static void initializeGpioPortforLightBarriers(EntityManager entityManagerIn, List<LightBarrier> lightBarriers) {
        // Initialize Pi4J with an auto context
        // An auto context includes AUTO-DETECT BINDINGS enabled
        // which will load all detected Pi4J extension libraries
        // (Platforms and Providers) in the class path
        Context pi4j = Pi4J.newAutoContext();
        System.setProperty("pi4j.host", "10.0.0.50");
        // get a Digital Input I/O provider from the Pi4J context
        DigitalInputProvider digitalInputProvider = pi4j.provider("pigpio-digital-input");

        for (LightBarrier lightBarrier : lightBarriers) {

            System.out.println("Initializing digital input for ".concat(lightBarrier.getType()).concat(" Light Barrier (ID: ".concat(lightBarrier.getId().toString())).concat(") on GPIO port ").concat(lightBarrier.getGpioPort().toString()));
            Properties properties = new Properties();
            properties.put("id", lightBarrier.getId().toString());
            properties.put("address", lightBarrier.getGpioPort());
            properties.put("pull", "UP");
            properties.put("name", lightBarrier.getType().concat(" Light Barrier (ID: ".concat(lightBarrier.getId().toString()).concat(")")));

            DigitalInputConfig config = DigitalInput.newConfigBuilder(pi4j)
                    .load(properties)
                    .build();

            DigitalInput input = pi4j.din().create(config);
            input.addListener(new CustomDigitalStateChangeListener(entityManagerIn, lightBarrier));
        }
        while (true) {
            // Endless loop while waiting for Light Barrier Cross events
        }
    }
}
