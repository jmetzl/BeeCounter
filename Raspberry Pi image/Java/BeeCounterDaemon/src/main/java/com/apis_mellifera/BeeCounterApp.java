/* Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.*/
package com.apis_mellifera;


import com.apis_mellifera.model.entity.BeeTraffic;
import com.apis_mellifera.model.entity.HiveEntrance;
import com.apis_mellifera.model.entity.LightBarrier;
import jakarta.persistence.*;

import java.util.List;

/**
 * Maven archetype for generating a JPA application.
 * The sample connects to Oracle Database and does some database operations.
 * Make sure to use the schema (JDBCSampleData.sql) at https://tinyurl.com/y2a7x65z
 * to create the tables "emp" and "dept" required for this sample. 
 * @author Nirmala Sundarappa
 */
public class BeeCounterApp {
	public static void main(String[] args) {
		//PersistenceProvider provider = new PersistenceProvider();
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("beecounterPU");
		EntityManager manager = factory.createEntityManager();

		EntityTransaction tx = manager.getTransaction();
		tx.begin();

		TypedQuery<HiveEntrance> hiveEntranceQuery = manager.createNamedQuery("HiveEntrance.findAll", HiveEntrance.class);
		List<HiveEntrance> hiveEntrances = hiveEntranceQuery.getResultList();
		System.out.println(String.format("%6s   %18s  %15s","ID", "Hive Entrance Name", "Number"));
		System.out.println(String.format("%6s   %18s  %15s","------", "------------------", "-----------"));
		for (HiveEntrance hiveEntrance : hiveEntrances) {
			System.out.println(String.format("%6s   %18s  %15s",hiveEntrance.getId(), hiveEntrance.getName(), hiveEntrance.getNumber()));
		}

		System.out.println("\nPrinting the list of Light barriers:");
		TypedQuery<LightBarrier> lightBarrierQuery = manager.createNamedQuery("LightBarrier.findByHeId", LightBarrier.class).setParameter("heId", "1");
		List<LightBarrier> lightBarriers = lightBarrierQuery.getResultList();
		System.out.println(String.format("%15s   %15s  %15s  %15s","Hive Entrance ID", "Light Barrier ID", "Type", "GPIO Port"));
		System.out.println(String.format("%15s   %15s  %15s  %15s","------", "-----------", "-----------", "-----------"));
		for (LightBarrier lightBarrier : lightBarriers) {
			System.out.println(String.format("%15s   %15s  %15s  %15s",lightBarrier.getHeId(), lightBarrier.getId(), lightBarrier.getType(), lightBarrier.getGpioPort() ));
		}

		System.out.println("\nPrinting the list of BeeTraffic:");
		TypedQuery<BeeTraffic> beeTraficQuery = manager.createNamedQuery("BeeTraffic.findAll", BeeTraffic.class);
		List<BeeTraffic> beeTrafficList = beeTraficQuery.getResultList();
		System.out.println(String.format("%15s   %15s  %15s","Hive Entrance ID", "Light Barrier ID", "Type"));
		System.out.println(String.format("%15s   %15s  %15s","------", "-----------", "-----------"));
		for (BeeTraffic beeTraffic : beeTrafficList) {
			System.out.println(String.format("%15s   %15s  %15s",beeTraffic.getId(), beeTraffic.getLbId(), beeTraffic.getLightBarrierCrossDateTime()));
		}

	}
}
