package com.reg.voteid;

public class VoterIdGen {
	String userid,voterid;

	public VoterIdGen(String userid, String voterid) {
		super();
		this.userid = userid;
		this.voterid = voterid;
	}

	public VoterIdGen() {
		super();
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getVoterid() {
		return voterid;
	}

	public void setVoterid(String voterid) {
		this.voterid = voterid;
	}
	

}
