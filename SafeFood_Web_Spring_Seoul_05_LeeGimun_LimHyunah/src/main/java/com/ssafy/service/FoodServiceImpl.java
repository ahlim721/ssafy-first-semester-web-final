package com.ssafy.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.dao.FoodDAO;
import com.ssafy.dao.FoodDAOImpl;
import com.ssafy.vo.Food;
import com.ssafy.vo.FoodPageBean;

@Service("fservice")
public class FoodServiceImpl implements FoodService {
	@Autowired
	FoodDAO dao;

	public List<Food> search(FoodPageBean bean) {
		System.out.println(bean);
		System.out.println("service -------- flist ---------");
		if (bean != null) { // 조건 있는 검색
			String key = bean.getKey();
			String word = bean.getWord();
			if (!key.equals("all") && word != null && !word.trim().equals("")) {
				word = "%" + word + "%";
				if (key.equals("제품명")) {
					return dao.searchByName(word);
				}
				// 제조사 검색 구현
				if (key.equals("제조사")) {
					return dao.searchByMaker(word);
				}
				// 원재료 검색 구현
				if (key.equals("원재료")) {
					return dao.searchByMaterial(word);
				}
			}
		}
		return dao.searchAll();
	}

	public Food searchOne(int code) {
		return dao.searchOne(code);
	}

	public List<Food> searchBest() {
		return dao.searchBest();
	}

	public List<Food> searchBestIndex() {
		return dao.searchBestIndex();
	}

	@Override
	public void insert(Food food) {
		dao.insert(food);
	}
}
