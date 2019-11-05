package com.mybatis.dao;

import java.util.List;

import com.mybatis.vo.Board;

// CLIENT(BoardApp.java)
public interface BoardDAO {
	public List<Board> selectAll();
	public Board selectOne(String num);
	public void updateCount(String num);

	public void insert(Board b);

	public void deleteBoard(String num);

	public void modifyBoard(Board b);

	public List<Board> searchByTitle(String word);

	public List<Board> searchByID(String word);
}
