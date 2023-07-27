package com.poly.dao;

import java.util.List;

import com.poly.entity.history;

public interface historyDAO {

	List<history> findByUserName(String userName);
	
	List<history> findUserAndIsLike(String userName);
	
	history findUserIdAndVideoId(int userID, int videoId);
	
	history create(history entity); 
	history update(history entity);
}
