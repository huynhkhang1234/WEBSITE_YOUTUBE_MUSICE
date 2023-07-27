package com.poly.dao.implement;

import java.util.List;

import com.poly.dao.AbstractDao;
import com.poly.dao.historyDAO;
import com.poly.entity.history;

public class historyImplement extends AbstractDao<history> implements historyDAO {
	
	@Override
	public List<history> findByUserName(String userName) {
		String sql = "SELECT o FROM history o WHERE o.user.userName = ?0 AND o.video.isActive = 1"
				+" order by o.viewDate DESC";
					return super.findMany(history.class, sql, userName);
	}

	@Override
	public List<history> findUserAndIsLike(String userName) {
		String sql = "SELECT o FROM history o WHERE o.user.userName = ?0 AND  o.isLike = 1"
				+ "AND o.video.isActive = 1"
			+" order by o.viewDate DESC";
	return super.findMany(history.class, sql, userName);
	}

	@Override
	public history findUserIdAndVideoId(int userID, int videoId) {
		String sql = "SELECT o FROM history o WHERE o.user.id = ?0 AND  o.video.id = ?1"
				+ "AND o.video.isActive = 1";
			
	return  super.findOne(history.class, sql, userID,videoId);
	}
	
}
