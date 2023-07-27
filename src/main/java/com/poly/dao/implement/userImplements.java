package com.poly.dao.implement;

import java.util.List;
import java.util.Map;

import com.poly.contans.NamedStore;
import com.poly.dao.AbstractDao;
import com.poly.dao.userDAO;
import com.poly.entity.user;

public class userImplements extends AbstractDao<user> implements userDAO {

	@Override
	public user finById(int id) {
		
		return super.findById(user.class,id );
	}

	@Override
	public user finByEmail(String email) {
		String sql = "SELECT o FROM user o where o.email = ?0";
		
		return (user) super.findOne(user.class,sql, email );
	}

	@Override
	public user finByUserName(String name) {
		String sql = "SELECT o FROM user o where o.username = ?0";
		
		return (user) super.findOne(user.class, sql, name);
	}
	
	@Override
	public user finByNameAndPass(String username, String password) {
		String sql = "SELECT o FROM user o WHERE o.userName = ?0 AND o.passWord = ?1";		
		return (user) super.findOne(user.class, sql, username, password);
	}

	@Override
	public List<user> findALl() {
				
		return  super.findALl(user.class, true);
	}	
	
	@Override
	public List<user> findALl(int pageNumber, int pageSize) {
	return super.findALl(user.class, true, pageNumber, pageSize);
	}

	@Override
	public user create(user entity) {
		
		return super.create(entity);
	}

	@Override
	public user update(user entity) {
		// TODO Auto-generated method stub
		return super.update(entity);
	}

	@Override
	public user delete(user entity) {
		// TODO Auto-generated method stub
		return super.delete(entity);
	}

	@Override
	public List<user> findUsersLikedVideoByVideoHref(Map<String, Object> params) {
		return super.callStored(NamedStore.FIND_USERS_LIKED_VIDEO_BY_VIDEO_HREF, params);

	}

}
