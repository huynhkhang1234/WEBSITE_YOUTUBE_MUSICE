package com.poly.service.impl;

import java.util.List;

import com.poly.dao.videoDAO;
import com.poly.dao.implement.videoImplements;
import com.poly.entity.video;
import com.poly.service.videoService;

public class videoServiceImpl implements videoService {
	private videoDAO dao;

	public videoServiceImpl() {
		dao = new videoImplements();
	}

	@Override
	public video findById(Integer id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public video findByHref(String href) {

		return dao.findByHref(href);
	}

	@Override
	public List<video> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public List<video> findAll(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return dao.findAll(pageNumber, pageSize);
	}

	@Override
	public video create(video entity) {
		entity.setActive(true);
		entity.setViews(0);
		entity.setShares(0);
		return dao.create(entity);
	}

	@Override
	public video update(video entity) {
		return dao.update(entity);
	}

	@Override
	public video delete(String  href) {
		video entity = dao.findByHref(href);
		entity.setActive(false);
		return dao.update(entity);
	}

}
