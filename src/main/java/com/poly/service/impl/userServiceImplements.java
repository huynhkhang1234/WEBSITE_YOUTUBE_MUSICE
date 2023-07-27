package com.poly.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.poly.dao.userDAO;
import com.poly.dao.implement.userImplements;
import com.poly.entity.user;
import com.poly.service.userService;

import dto.UserDto;

public class userServiceImplements implements userService {

	private userDAO dao;

	public userServiceImplements() {
		dao = new userImplements();

	}

	@Override
	public user finById(int id) {
		
		return dao.finById(id);
	}

	@Override
	public user finByEmail(String email) {
		
		return dao.finByEmail(email);
	}

	@Override
	public user finByUserName(String name) {
		
		return dao.finByEmail(name);
	}

	@Override
	public user Login(String userName, String passWord) {
		return dao.finByNameAndPass(userName, passWord);
	}

	@Override
	public List<user> findALl() {
		// TODO Auto-generated method stub
		return dao.findALl();
	}

	@Override
	public List<user> findALl(int pageNumber, int pageSize) {
		
		return dao.findALl(pageNumber, pageSize);
	}

	@Override
	public user create(String userName, String passWord, String email) {
		user newUser = new user();
		newUser.setUserName(userName);
		newUser.setPassWord(passWord);
		newUser.setEmail(email);
		newUser.setIsAdmin(false);
		newUser.setIsActive(true);
		return dao.create(newUser);
	}

	@Override
	public user update(user entity) {
		// TODO Auto-generated method stub
		return dao.update(entity);
	}

	@Override
	public user delete(String userName) {
		user userDelete = dao.finByUserName(userName);
		userDelete.setIsActive(false);			
		return dao.update(userDelete);
	}

	@Override
	public user resetPassWord(String email) {
		// trả về đối tượng
		user userItem  = finByEmail(email);
		if(userItem != null) {
			String newPass = String.valueOf((int) (Math.random() * ((9999 - 1000) + 1)) + 1000);
			userItem.setPassWord(newPass);
			
			return dao.update(userItem);
		}
		
		
		return null;
	}

//	@Override
//	public List<UserDto> findUsersLikedVideoByVideoHref(String href) {
//		Map<String, Object> params = new HashMap<>();
//		params.put("videoHref",href);
//		return dao.findUsersLikedVideoByVideoHref (params);
//		
//	}

	

	@Override
	public List<UserDto> findUsersLikedVideoByVideoHref(String href) {
		Map<String, Object> params = new HashMap<>();
		params.put("videoHref", href);
		List<user> users=  dao.findUsersLikedVideoByVideoHref(params);
		List<UserDto> result = new ArrayList<>();
		users.forEach(user -> {
			UserDto dto = new UserDto();
			dto.setUsername(user.getUserName());
			dto.setEmail(user.getEmail());
			result.add(dto);
		});
		
		return result;
	}

	

}
