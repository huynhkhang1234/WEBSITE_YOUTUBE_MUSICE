package com.poly.service.impl;

import java.util.List;

import com.poly.dao.StatDao;
import com.poly.dao.implement.StatDaoImpl;

import dto.VideoLikedInfo;

public class StatServiceImpl implements StatService{

	private StatDao statDao;
	public StatServiceImpl() {
		statDao = new StatDaoImpl();
	}
	
	
	@Override
	public List<VideoLikedInfo> findVideoLikedInfo() {
		
		return statDao.findVideoLikedInfo();
	}

}
