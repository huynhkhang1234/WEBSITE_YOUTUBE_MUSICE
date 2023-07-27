package com.poly.entity;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="historys")
public class history {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name="userid", referencedColumnName = "id")
	@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
	private user user;
	
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name="videoid", referencedColumnName = "id")
	
	@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
	private video video;

	@Column(name="viewDate")
	@CreationTimestamp
	private Timestamp viewDate;
	
	@Column(name="isLike")
	private boolean isLike;
	
	@Column(name="likeDate")
	private Timestamp likeDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public user getUser() {
		return user;
	}
	public void setUser(user user) {
		this.user = user;
	}
	public video getVideo() {
		return video;
	}
	public void setVideo(video video) {
		this.video = video;
	}
	public Timestamp getViewDate() {
		return viewDate;
	}
	public void setViewDate(Timestamp viewDate) {
		this.viewDate = viewDate;
	}
	public boolean isLike() {
		return isLike;
	}
	public void setLike(boolean isLike) {
		this.isLike = isLike;
	}
	public Timestamp getLikeDate() {
		return likeDate;
	}
	public void setLikeDate(Timestamp likeDate) {
		this.likeDate = likeDate;
	}
	
	public history() {
		super();		
	}
	
	
}
