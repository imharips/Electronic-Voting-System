package com.candidate;

public class Candidate {
String candidateId,candidateName,dob,partyName,district,constituency,address,phone,email;

public Candidate(String candidateId, String candidateName, String dob, String partyName, String district,
		String constituency, String address, String phone, String email) {
	super();
	this.candidateId = candidateId;
	this.candidateName = candidateName;
	this.dob = dob;
	this.partyName = partyName;
	this.district = district;
	this.constituency = constituency;
	this.address = address;
	this.phone = phone;
	this.email = email;
}

public Candidate() {
	super();
}

public String getCandidateId() {
	return candidateId;
}

public void setCandidateId(String candidateId) {
	this.candidateId = candidateId;
}

public String getCandidateName() {
	return candidateName;
}

public void setCandidateName(String candidateName) {
	this.candidateName = candidateName;
}

public String getDob() {
	return dob;
}

public void setDob(String dob) {
	this.dob = dob;
}

public String getPartyName() {
	return partyName;
}

public void setPartyName(String partyName) {
	this.partyName = partyName;
}

public String getDistrict() {
	return district;
}

public void setDistrict(String district) {
	this.district = district;
}

public String getConstituency() {
	return constituency;
}

public void setConstituency(String constituency) {
	this.constituency = constituency;
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

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

}
