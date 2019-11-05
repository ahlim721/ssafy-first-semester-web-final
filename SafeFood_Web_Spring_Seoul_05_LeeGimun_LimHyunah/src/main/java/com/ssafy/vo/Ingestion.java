package com.ssafy.vo;

public class Ingestion {
	String mid;
	int code;

	public Ingestion() {
		super();
	}

	public Ingestion(String mid, int code) {
		super();
		this.mid = mid;
		this.code = code;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}
	
	
}
