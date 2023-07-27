package com.poly.dao;

import java.util.List;

import com.poly.entity.video;

public interface videoDAO {
	video findById(Integer id);

	video findByHref(String href);	
	List<video> findAll();
	List<video> findAll(int pageNumber, int pageSize);
	video create(video entity);
	video update(video entity);
	video delete (video entity);
	
	
}
