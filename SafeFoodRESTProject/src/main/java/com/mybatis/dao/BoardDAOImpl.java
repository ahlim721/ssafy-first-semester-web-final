package com.mybatis.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mybatis.mapper.BoardMapper;
import com.mybatis.vo.Board;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	BoardMapper mapper;

	@Override
	public List<Board> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public Board selectOne(String num) {
		return mapper.selectOne(num);
	}

	@Override
	public void updateCount(String num) {
		mapper.updateCount(num);
	}

	@Override
	public void insert(Board b) {
		mapper.insertBoard(b);
	}

	@Override
	public void deleteBoard(String num) {
		mapper.deleteBoard(num);
	}

	@Override
	public void modifyBoard(Board b) {
		mapper.modifyBoard(b);
	}

	@Override
	public List<Board> searchByTitle(String word) {
		return mapper.searchByTitle(word);
	}

	@Override
	public List<Board> searchByID(String word) {
		return mapper.searchByID(word);
	}
}
