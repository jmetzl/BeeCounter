package com.apis_mellifera;


import com.apis_mellifera.businessservice.BusinessServiceImpl;
import com.apis_mellifera.listener.CustomDigitalStateChangeListener;
import com.apis_mellifera.model.entity.LightBarrier;
import com.pi4j.Pi4J;
import com.pi4j.boardinfo.util.BoardInfoHelper;
import com.pi4j.context.Context;
import com.pi4j.io.gpio.digital.*;
import com.pi4j.io.gpio.*;
import com.pi4j.util.Console;
import jakarta.persistence.*;

import java.util.List;
import java.util.Properties;

public class BeeCounterApp {
    public static void main(String[] args) {
        System.setProperty("org.slf4j.simpleLogger.defaultLogLevel", "INFO");
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
        final var console = new Console();
        console.title("<-- The Pi4J Project -->", "BeeCounter project");

        // ------------------------------------------------------------
        // Initialize the Pi4J Runtime Context
        // ------------------------------------------------------------
        var pi4j = Pi4J.newAutoContext();

        // ------------------------------------------------------------
        // Output Pi4J Context information
        // ------------------------------------------------------------
        // PrintInfo.printLoadedPlatforms(console, pi4j);
        //PrintInfo.printDefaultPlatform(console, pi4j);
        PrintInfo.printProviders(console, pi4j);

        // ------------------------------------------------------------
        // Output Pi4J Board information
        // ------------------------------------------------------------
        // console.println("Board model: " + pi4j.boardInfo().getBoardModel().getLabel());
        console.println("Operating system: " + pi4j.boardInfo().getOperatingSystem());
        console.println("Java versions: " + pi4j.boardInfo().getJavaInfo());
        // This info is also available directly from the BoardInfoHelper,
        // and with some additional realtime data.
        //console.println("Board model: " + BoardInfoHelper.current().getBoardModel().getLabel());
        console.println("Raspberry Pi model with RP1 chip (Raspberry Pi 5): " + BoardInfoHelper.usesRP1());
        console.println("OS is 64-bit: " + BoardInfoHelper.is64bit());
        console.println("JVM memory used (MB): " + BoardInfoHelper.getJvmMemory().getUsedInMb());
        console.println("Board temperature (°C): " + BoardInfoHelper.getBoardReading().getTemperatureInCelsius());

        PrintInfo.printRegistry(console, pi4j);

        // System.setProperty("pi4j.host", "10.0.0.50");
        // Create GPIO controller instance final GpioController gpio = GpioFactory.getInstance();

        for (LightBarrier lightBarrier : lightBarriers) {

            System.out.println("Initializing digital input for ".concat(lightBarrier.getType()).concat(" Light Barrier (ID: ".concat(lightBarrier.getId().toString())).concat(") on GPIO pin ").concat(lightBarrier.getGpioPin().toString()));
            Properties properties = new Properties();
            properties.put("id", lightBarrier.getId().toString());
            properties.put("address", lightBarrier.getGpioPin());
            // properties.put("pull", "UP");
            properties.put("name", lightBarrier.getType().concat(" Light Barrier (ID: ".concat(lightBarrier.getId().toString()).concat(")")));
            var config = DigitalInput.newConfigBuilder(pi4j)
                    .load(properties)
                    .build();
            var input = pi4j.din().create(config);
            // input.addListener(new CustomDigitalStateChangeListener(entityManagerIn, lightBarrier));
            input.addListener(new DigitalStateChangeListener() {
                @Override
                public void onDigitalStateChange(DigitalStateChangeEvent event) {
                    System.out.println("DIGITAL INPUT [");
                    System.out.println(event.source());
                    System.out.println("] STATE CHANGE: ");
                    //System.out.println(event.state());
                }
            });
        }
        while (true) {
            try {
                Thread.sleep(100);
            }
            catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        // Shutdown Pi4J
        //pi4j.shutdown();
    }
}
