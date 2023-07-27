package com.poly.dao;

import java.util.List;
import java.util.Map;

import com.poly.entity.user;

public interface userDAO {
	user finById(int id);
	user finByEmail(String email);
	user finByUserName(String name);
	user finByNameAndPass(String userName, String passWord);
	List<user> findALl();
	List<user> findALl(int pageNumber, int pageSize); 
	user create(user entity);
	user update(user entity);
	user delete(user entity);
	List<user> findUsersLikedVideoByVideoHref(Map<String, Object> params);
}
