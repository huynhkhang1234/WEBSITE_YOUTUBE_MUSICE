package com.poly.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.Table;

import com.poly.contans.NamedStore;
@NamedStoredProcedureQueries({
	@NamedStoredProcedureQuery(name = NamedStore.FIND_USERS_LIKED_VIDEO_BY_VIDEO_HREF,
			procedureName ="sp_selectUsersLikedVideoByVideoHref",
			resultClasses = {user.class},
			parameters = @StoredProcedureParameter(name="videoHref", type=String.class)
			)
})

@Entity
@Table (name = "users")
public class user {
	@Id
	@Column(name ="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name ="userName")
	private String userName;
	
	@Column(name ="passWord")
	private String passWord;
	
	@Column(name ="email")
	private String email;
	
	@Column(name ="isAdmin")
	private Boolean isAdmin;
	
	@Column(name ="isActive")
	private Boolean isActive;

	public Integer getId() {
		return id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(Boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	
	
	

}	
	