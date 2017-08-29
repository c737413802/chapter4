package com.chinasei.lwframework.user.dao;

import java.util.HashSet;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private String id;
	private String userName;
	private String userPassword;
	private String userEmail;
	private Set albums = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(String id, String userName, String userPassword) {
		this.id = id;
		this.userName = userName;
		this.userPassword = userPassword;
	}

	/** full constructor */
	public Users(String id, String userName, String userPassword,
			String userEmail, Set albums) {
		this.id = id;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.albums = albums;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Set getAlbums() {
		return this.albums;
	}

	public void setAlbums(Set albums) {
		this.albums = albums;
	}

}