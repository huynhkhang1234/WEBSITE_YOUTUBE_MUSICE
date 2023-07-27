package com.poly.service.impl;

import java.sql.Timestamp;
import java.util.List;

import com.poly.dao.historyDAO;
import com.poly.dao.implement.historyImplement;
import com.poly.dao.implement.videoImplements;
import com.poly.entity.history;
import com.poly.entity.user;
import com.poly.entity.video;
import com.poly.service.historySecvice;
import com.poly.service.videoService;

public class historyServiceImpl implements historySecvice {
	private historyDAO dao;
	private videoService videoServiceItem = new videoServiceImpl();
	public historyServiceImpl() {
		dao = new historyImplement();
	}

	@Override
	public List<history> findByUserName(String userName) {
		// TODO Auto-generated method stub
	return dao.findByUserName(userName);
	}

	@Override
	public List<history> findUserAndIsLike(String userName) {
		// TODO Auto-generated method stub
		return dao.findUserAndIsLike(userName);
	}

	@Override
	public history findUserIdAndVideoId(int userID, int videoId) {
		// TODO Auto-generated method stub
		return dao.findUserIdAndVideoId(userID, videoId);
	}

	@Override
	public history create(user userID, video videoId) {
		history historyEntity = findUserIdAndVideoId(userID.getId(), videoId.getId());
		if(historyEntity == null) {
			historyEntity = new history();
			historyEntity.setUser(userID);
			historyEntity.setVideo(videoId);
			historyEntity.setViewDate(new Timestamp(System.currentTimeMillis()));
			historyEntity.setLike(false);		
			return dao.create(historyEntity);	
		}
	
		return historyEntity;
	}

	@Override
	public Boolean updateLikeAndUnlike(user userid, String videoHref) {
			video videoItem = videoServiceItem.findByHref(videoHref);
			history existHistory = findUserIdAndVideoId(userid.getId() , videoItem.getId());
			
			if(existHistory.isLike() == false) {
				existHistory.setLike(true);
				existHistory.setLikeDate(new Timestamp(System.currentTimeMillis()));
				
			}else {
				existHistory.setLike(false);
				existHistory.setLikeDate(null);
			}
			history updateHistory = dao.update(existHistory);
			return updateHistory != null ? true:false;
		
	}

}
