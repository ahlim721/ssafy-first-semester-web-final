package com.mybatis.vo;

public class Board {
	String num, pass, title, id, wdate, content, count, isAnswer;

	public Board() {

	}

	public Board(String num, String pass, String title, String id, String wdate, String content, String count,
			String isAnswer) {
		this.num = num;
		this.pass = pass;
		this.title = title;
		this.id = id;
		this.wdate = wdate;
		this.content = content;
		this.count = count;
		this.isAnswer = isAnswer;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getIsAnswer() {
		return isAnswer;
	}

	public void setIsAnswer(String isAnswer) {
		this.isAnswer = isAnswer;
	}

}
