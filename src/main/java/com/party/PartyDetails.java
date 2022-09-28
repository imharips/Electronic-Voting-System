package com.party;

import java.io.InputStream;

public class PartyDetails {
	String partyName,partyLeader;
	InputStream file;

	public InputStream getFile() {
		return file;
	}

	public void setFile(InputStream file) {
		this.file = file;
	}

	public PartyDetails(String partyName, String partyLeader, InputStream file) {
		super();
		this.partyName = partyName;
		this.partyLeader = partyLeader;
		this.file = file;
	}

	public PartyDetails(String partyName, String partyLeader) {
		super();
		this.partyName = partyName;
		this.partyLeader = partyLeader;
	}

	public PartyDetails() {
		super();
	}

	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	public String getPartyLeader() {
		return partyLeader;
	}

	public void setPartyLeader(String partyLeader) {
		this.partyLeader = partyLeader;
	}
	

}
