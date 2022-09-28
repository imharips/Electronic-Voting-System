package com.election;

public class ElectionDetails {
	String e_name,e_date,time;
	

	public ElectionDetails(String e_name, String e_date, String time) {
		super();
		this.e_name = e_name;
		this.e_date = e_date;
		this.time = time;
	}

	public ElectionDetails() {
		super();
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getE_date() {
		return e_date;
	}

	public void setE_date(String e_date) {
		this.e_date = e_date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	

}
