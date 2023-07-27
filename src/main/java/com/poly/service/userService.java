package com.poly.service;

import java.util.List;
import java.util.Map;

import com.poly.entity.user;

import dto.UserDto;

public interface userService {
	user finById(int id);
	user finByEmail(String email);
	user finByUserName(String name);
	user resetPassWord(String email);
	user Login(String userName, String passWord);
	
	List<user> findALl();
	List<user> findALl(int pageNumber, int pageSize); 
	user create(String userName, String passWord,String email);
	user update(user entity);
	user delete(String userName);
	
	List<UserDto> findUsersLikedVideoByVideoHref(String href);
}
