package com.ssafy.vo;

public class Member_Has_Allergy {
	String mid;
	String acode;
	
	public Member_Has_Allergy() {
		
	}
	
	public Member_Has_Allergy(String mid, String acode) {
		super();
		this.mid = mid;
		this.acode = acode;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getAcode() {
		return acode;
	}
	public void setAcode(String acode) {
		this.acode = acode;
	}
	
	
	
	
}
