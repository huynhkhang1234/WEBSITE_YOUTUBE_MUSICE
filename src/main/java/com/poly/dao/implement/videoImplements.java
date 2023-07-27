package com.poly.dao.implement;

import java.util.List;

import com.poly.dao.AbstractDao;
import com.poly.dao.videoDAO;
import com.poly.entity.video;

public class videoImplements extends AbstractDao<video> implements videoDAO {

	@Override
	public video findById(Integer id) {
		
		return super.findById(video.class,id);
	}

	@Override
	public video findByHref(String href) {
		String sql = "SELECT o FROM video o where o.href = ?0";
		return (video) super.findOne(video.class, sql, href);
	}

	@Override
	public List<video> findAll() { 
		return super.findALl(video.class,true );
	}

	@Override
	public List<video> findAll(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return super.findALl(video.class, true, pageNumber, pageSize);
	}

	
}

