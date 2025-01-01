package com.apis_mellifera.businessservice;

import com.apis_mellifera.model.entity.BeeTraffic;
import com.apis_mellifera.model.entity.HiveEntrance;
import com.apis_mellifera.model.entity.LightBarrier;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import org.junit.Test;

import java.util.List;


public class BusinessServiceImplTest {

    private final BusinessServiceImpl businessService = new BusinessServiceImpl();
    private EntityManagerFactory factory = Persistence.createEntityManagerFactory("beecounterPU");


    @Test
    public void getAllHiveEntrancesTest() {
        EntityManager entityManager = factory.createEntityManager();
        try {
            List<HiveEntrance> hiveEntrances = businessService.getAllHiveEntrances(entityManager);
            System.out.println(String.format("%6s   %18s  %15s", "ID", "Hive Entrance Name", "Number"));
            System.out.println(String.format("%6s   %18s  %15s", "------", "------------------", "-----------"));
            for (HiveEntrance hiveEntrance : hiveEntrances) {
                System.out.println(String.format("%6s   %18s  %15s", hiveEntrance.getId(), hiveEntrance.getName(), hiveEntrance.getNumber()));
            }
        } catch (Exception exception) {
            System.out.println("Error occured while loading all Hive Entrances");
            assert (false);
        } finally {
            entityManager.close();
        }

        assert (true);
    }

    @Test
    public void getAllLightBarriers() {
        EntityManager entityManager = factory.createEntityManager();
        List<LightBarrier> lightBarriers = businessService.getAllLightBarriers(entityManager);

        try {
            System.out.println(String.format("%15s   %15s  %15s  %15s", "Hive Entrance ID", "Light Barrier ID", "Type", "GPIO Port"));
            System.out.println(String.format("%15s   %15s  %15s  %15s", "------", "-----------", "-----------", "-----------"));
            for (LightBarrier lightBarrier : lightBarriers) {
                System.out.println(String.format("%15s   %15s  %15s  %15s", lightBarrier.getHeId(), lightBarrier.getId(), lightBarrier.getType(), lightBarrier.getGpioPort()));
            }
        } catch (Exception exception) {
            System.out.println("Error occured while loading all Bee Traffic entries");
            assert (false);
        } finally {
            entityManager.close();
        }

        assert (true);
    }

    @Test
    public void getAllBeeTrafficEntries() {
        EntityManager entityManager = factory.createEntityManager();
        List<BeeTraffic> beeTrafficList = businessService.getAllBeeTrafficEntries(entityManager);

        try {
            System.out.println(String.format("%15s   %15s  %15s", "Hive Entrance ID", "Light Barrier ID", "Type"));
            System.out.println(String.format("%15s   %15s  %15s", "------", "-----------", "-----------"));
            for (BeeTraffic beeTraffic : beeTrafficList) {
                System.out.println(String.format("%15s   %15s  %15s", beeTraffic.getId(), beeTraffic.getLbId(), beeTraffic.getLightBarrierCrossDateTime()));
            }
        } catch (Exception exception) {
            System.out.println("Error occured while loading all Bee Traffic entries");
            assert (false);
        } finally {
            entityManager.close();
        }

        assert (true);
    }

}

