package com.admin;
public class AEdetails {
	String usertype,userid,pass;

	public AEdetails(String usertype, String userid, String pass) {
		super();
		this.usertype = usertype;
		this.userid = userid;
		this.pass = pass;
	}

	public AEdetails(String userid, String pass) {
		super();
		this.userid = userid;
		this.pass = pass;
	}

	public AEdetails() {
		super();
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	

}
