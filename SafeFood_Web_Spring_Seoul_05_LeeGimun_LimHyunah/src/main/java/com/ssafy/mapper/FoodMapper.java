package com.ssafy.mapper;

import java.util.List;

import com.ssafy.vo.Food;
import com.ssafy.vo.Member;

public interface FoodMapper {
	public List<Food> searchByName(String word);
	public List<Food> searchByMaker(String word);
	public List<Food> searchByMaterial(String word);
	public List<Food> searchAll();
	public Food searchOne(int code);
	
	// --
	public List<Food> searchBest();
	public List<Food> searchBestIndex();
	public void insert(Food food);
	
}
