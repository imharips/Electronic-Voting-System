package com.reg;

public class User {
	String userid,pass,firstname,lastname,dob,gender,address,phone,constituency,district,voterid;
	public String getVoterid() {
		return voterid;
	}
	public void setVoterid(String voterid) {
		this.voterid = voterid;
	}
	int age;
	
	public User(String voterid) {
		super();
		this.voterid = voterid;
	}
	public User(String userid, String pass, String firstname, String lastname,  int age, String gender,
			String address, String phone, String constituency, String district,String dob) {
		super();
		this.userid = userid;
		this.pass = pass;
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.constituency = constituency;
		this.district = district;
		
		this.dob = dob;
		
	}
	public User() {
		super();
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
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getConstituency() {
		return constituency;
	}
	public void setConstituency(String constituency) {
		this.constituency = constituency;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	

}
