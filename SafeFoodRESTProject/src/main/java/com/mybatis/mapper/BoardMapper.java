package com.mybatis.mapper;

import java.util.List;

import com.mybatis.vo.Board;

public interface BoardMapper {
	public List<Board> selectAll();
	public Board selectOne(String num);
	public void updateCount(String num);

	public void insertBoard(Board b);

	public void deleteBoard(String num);

	public void modifyBoard(Board b);

	public List<Board> searchByTitle(String word);

	public List<Board> searchByID(String word);
}
