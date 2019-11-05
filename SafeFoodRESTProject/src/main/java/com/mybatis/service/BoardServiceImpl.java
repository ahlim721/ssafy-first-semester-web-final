package com.mybatis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mybatis.dao.BoardDAO;
import com.mybatis.vo.Board;

/**  */
@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO dao;

	@Override
	public List<Board> selectAll() {
		return dao.selectAll();
	}

	@Override
	@Transactional
	public Board selectOne(int type, String num) {
		if (type == 0) { // default
			dao.updateCount(num);
		}
		return dao.selectOne(num);
	}

	@Override
	public void insert(Board b) {
		dao.insert(b);
	}

	@Override
	public void deleteBoard(String num) {
		dao.deleteBoard(num);
	}

	@Override
	public void modifyBoard(Board b) {
		dao.modifyBoard(b);
	}

	@Override
	public List<Board> searchByTitle(String word) {
		return dao.searchByTitle(word);
	}

	@Override
	public List<Board> searchByID(String word) {
		return dao.searchByID(word);
	}
}
