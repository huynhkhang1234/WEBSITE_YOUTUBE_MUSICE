package com.poly.dao;

import java.util.List;
import java.util.Map;

import javax.management.RuntimeErrorException;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;

import com.poly.utils.jpaUtils;

public class AbstractDao<T> {
	public static EntityManager entityManager = jpaUtils.getEntityManager();

	@SuppressWarnings("deprecation")
	@Override
	protected void finalize() throws Throwable {
		entityManager.close();
		super.finalize();

	}

	// trả về 1 user
	public T findById(Class<T> clazz, int id) {
		return entityManager.find(clazz, id);

	}

	// trả về 1ist
	public List<T> findALl(Class<T> clazz, Boolean isDelete) {
		// lấy tê của cái entity
		String entityName = clazz.getSimpleName();
		StringBuilder sql = new StringBuilder();
//		sử dụng o thay cho * và 1 số thứ		
		sql.append("SELECT o FROM ").append(entityName).append(" o");
		if (isDelete == true) {
			sql.append(" WHERE o.isActive = 1");
		}

		TypedQuery<T> query = entityManager.createQuery(sql.toString(), clazz);
		return query.getResultList();

		//
	}
	// trả về theo trang

	public List<T> findALl(Class<T> clazz, Boolean isDelete,int pageNumber, int pageSize) {
		// lấy tê của cái entity
		String entityName = clazz.getSimpleName();
		StringBuilder sql = new StringBuilder();
//		sử dụng o thay cho * và 1 số thứ
		sql.append("SELECT o FORM").append(entityName).append("o");
		if (isDelete == true) {
			sql.append(" WHERE isActive = 1");
		}
		TypedQuery<T> query = entityManager.createQuery(sql.toString(), clazz);
		query.setFirstResult((pageNumber - 1) * pageSize);
		query.setMaxResults(pageSize);
		// THỰC HIỆN TRA VỀ	
		return query.getResultList();

		//
	}

	
	public T findOne(Class<T> clazz,String sql,Object...params){
		
			TypedQuery<T> query = entityManager.createQuery(sql,clazz);
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
			//nếu có dữ liệu sẽ báo lỗi
			
			List<T> result =  query.getResultList();
			if(result.isEmpty()) {
				return null;			
			}
				return  result.get(0);
		
	}
	
	
	// hàm tìm kiếm theo trả về số lượng tham số vô hạn có thể tìm 1 cái dc luôn.
		public List <T> findMany(Class<T> clazz,String sql,Object...params){
			TypedQuery<T> query = entityManager.createQuery(sql,clazz);
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
			return query.getResultList();
		}
		
		
		//gom giá trị của các entity về q object
		@SuppressWarnings("unchecked")
		public List<Object[]> findManyByNativeQuery( String sql, Object... params) {
			Query query = entityManager.createNativeQuery(sql);
			for(int i = 0; i< params.length;i++) {
				query.setParameter(i, params[i]);
			}
			
			return query.getResultList();
		}
		//thêm 1 đổi tượng
		public T create(T entity) {
			try {
				entityManager.getTransaction().begin();
				entityManager.persist(entity);
				entityManager.getTransaction().commit();
				System.out.println("Thêm thành công");
				return entity;
			} catch (Error e) {
				entityManager.getTransaction().rollback();
				System.out.println("Thêm thất bại");
				e.printStackTrace();
				throw new RuntimeErrorException(e);
			}
			
		}
		//update
		public T update(T entity) {
			try {
				entityManager.getTransaction().begin();
				entityManager.merge(entity);
				entityManager.getTransaction().commit();
				System.out.println("update thành công");
				return entity;
			} catch (Error e) {
				entityManager.getTransaction().rollback();
				System.out.println("update thất bại");
				e.printStackTrace();
				throw new RuntimeErrorException(e);
			}
			
		}
		//delete
		public T delete(T entity) {
			try {
				entityManager.getTransaction().begin();
				entityManager.remove(entity);
				entityManager.getTransaction().commit();
				System.out.println("xóa thành công");
				return entity;
			} catch (Error e) {
				entityManager.getTransaction().rollback();
				System.out.println("xóa thất bại");
				e.printStackTrace();
				throw new RuntimeErrorException(e);
			}
			
		}
		
		@SuppressWarnings("unchecked")
		public List<T> callStored(String namedStore, Map<String, Object> params){
			StoredProcedureQuery query= entityManager.createNamedStoredProcedureQuery(namedStore);
			params.forEach((key, value) -> query.setParameter(key, value));
			
			return (List<T>) query.getResultList();
		}
}
