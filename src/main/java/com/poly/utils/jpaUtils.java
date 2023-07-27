package com.poly.utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class jpaUtils {
	public static EntityManagerFactory factory;
	 
	public static EntityManager getEntityManager() {
		if(factory == null || factory.isOpen()) {
			factory = Persistence.createEntityManagerFactory("KhangHBPC04012_Assignment_Java4_Dynamic");
					
		}
		return factory.createEntityManager();
	}
	
	public static void close() {
		if(factory != null && factory.isOpen()) {
			factory.close();
		}
		factory = null;
	}
}
