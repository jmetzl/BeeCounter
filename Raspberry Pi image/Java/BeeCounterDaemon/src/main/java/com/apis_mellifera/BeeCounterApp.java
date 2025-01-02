package com.apis_mellifera;


import com.apis_mellifera.businessservice.BusinessServiceImpl;
import com.apis_mellifera.listener.CustomDigitalStateChangeListener;
import com.apis_mellifera.model.entity.LightBarrier;
import com.pi4j.Pi4J;
import com.pi4j.boardinfo.util.BoardInfoHelper;
import com.pi4j.context.Context;
import com.pi4j.io.gpio.digital.*;
import com.pi4j.util.Console;
import com.pi4j.io.gpio.digital.DigitalState;
import jakarta.persistence.*;

import java.util.List;

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

    private static void printBoardInformation(Console consoleIn, Context pi4jContextIn) {
        // ------------------------------------------------------------
        // Output Pi4J Context information
        // ------------------------------------------------------------
        PrintInfo.printLoadedPlatforms(consoleIn, pi4jContextIn);
        PrintInfo.printDefaultPlatform(consoleIn, pi4jContextIn);
        PrintInfo.printProviders(consoleIn, pi4jContextIn);

        // ------------------------------------------------------------
        // Output Pi4J Board information
        // ------------------------------------------------------------
        //console.println("Board model: " + pi4j.boardInfo().getBoardModel().getLabel());
        consoleIn.println("Operating system: " + pi4jContextIn.boardInfo().getOperatingSystem());
        consoleIn.println("Java versions: " + pi4jContextIn.boardInfo().getJavaInfo());
        // This info is also available directly from the BoardInfoHelper,
        // and with some additional realtime data.
        //console.println("Board model: " + BoardInfoHelper.current().getBoardModel().getLabel());
        consoleIn.println("Raspberry Pi model with RP1 chip (Raspberry Pi 5): " + BoardInfoHelper.usesRP1());
        consoleIn.println("OS is 64-bit: " + BoardInfoHelper.is64bit());
        consoleIn.println("JVM memory used (MB): " + BoardInfoHelper.getJvmMemory().getUsedInMb());
        consoleIn.println("Board temperature (°C): " + BoardInfoHelper.getBoardReading().getTemperatureInCelsius());

        PrintInfo.printRegistry(consoleIn, pi4jContextIn);
    }

    private static void initializeGpioPortforLightBarriers(EntityManager entityManagerIn, List<LightBarrier> lightBarriers) {
        if (BoardInfoHelper.runningOnRaspberryPi()) {
            System.out.println("Running on a Raspberry Pi!");
        } else {
            System.out.println("Not running on a Raspberry Pi.");
            return;
        }

        final var console = new Console();
        console.title("<-- The Pi4J Project -->", "BeeCounter project");

        // ------------------------------------------------------------
        // Initialize the Pi4J Runtime Context
        // ------------------------------------------------------------
        var pi4jContext = Pi4J.newAutoContext();

        printBoardInformation(console,pi4jContext);


        // System.setProperty("pi4j.host", "10.0.0.50");
        // Create GPIO controller instance final GpioController gpio = GpioFactory.getInstance();

        for (LightBarrier lightBarrier : lightBarriers) {

            System.out.println("Initializing digital input for ".concat(lightBarrier.getType()).concat(" Light Barrier (ID: ".concat(lightBarrier.getId().toString())).concat(") on GPIO pin ").concat(lightBarrier.getGpioPin().toString()));
            var lightBarrierConfig = DigitalInput.newConfigBuilder(pi4jContext)
                    .id(lightBarrier.getId().toString())
                    .name(lightBarrier.getType().concat(" Light Barrier (ID: ").concat(lightBarrier.getId().toString()))
                    .address(lightBarrier.getGpioPin())
                    .pull(PullResistance.PULL_UP)
                    .build();

            var lightBarrierInput = pi4jContext.create(lightBarrierConfig);

            // input.addListener(new CustomDigitalStateChangeListener(entityManagerIn, lightBarrier));
            lightBarrierInput.addListener(new DigitalStateChangeListener() {
                @Override
                public void onDigitalStateChange(DigitalStateChangeEvent event) {
                    console.println("DIGITAL INPUT [");
                    console.println(event.source());
                    console.println("] STATE CHANGE: ");
                    //System.out.println(event.state());
                    if (event.state() == DigitalState.HIGH) {
                        console.println("Light Barrier Crossed");
                    }
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
