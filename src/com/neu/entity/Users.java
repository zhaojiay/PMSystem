package com.neu.entity;

public class Users {
	private Integer id;
	private String uname;
	private String password;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", uname=" + uname + ", password=" + password + "]";
	}
	public Users(Integer id, String uname, String password) {
		super();
		this.id = id;
		this.uname = uname;
		this.password = password;
	}
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
