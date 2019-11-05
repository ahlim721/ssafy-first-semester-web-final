package com.ssafy.service;

import java.util.List;

import com.ssafy.vo.Food;
import com.ssafy.vo.FoodPageBean;

public interface FoodService {

	public List<Food> search(FoodPageBean bean);

	public Food searchOne(int code);

	public List<Food> searchBest();

	public List<Food> searchBestIndex();

	public void insert(Food food);

}
