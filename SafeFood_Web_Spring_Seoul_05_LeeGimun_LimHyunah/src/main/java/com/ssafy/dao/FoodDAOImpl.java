package com.ssafy.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.mapper.FoodMapper;
import com.ssafy.vo.Food;

@Repository
public class FoodDAOImpl implements FoodDAO {

	@Autowired
	FoodMapper mapper;

	@Override
	public List<Food> searchByName(String word) {
		return mapper.searchByName(word);
	}

	@Override
	public List<Food> searchByMaker(String word) {
		return mapper.searchByMaker(word);
	}

	@Override
	public List<Food> searchByMaterial(String word) {
		return mapper.searchByMaterial(word);
	}

	@Override
	public List<Food> searchAll() {
		return mapper.searchAll();
	}

	@Override
	public Food searchOne(int code) {
		return mapper.searchOne(code);
	}

	@Override
	public List<Food> searchBest() {
		return mapper.searchBest();
	}

	@Override
	public List<Food> searchBestIndex() {
		return searchBestIndex();
	}

	@Override
	public void insert(Food food) {
		mapper.insert(food);
	}
}
