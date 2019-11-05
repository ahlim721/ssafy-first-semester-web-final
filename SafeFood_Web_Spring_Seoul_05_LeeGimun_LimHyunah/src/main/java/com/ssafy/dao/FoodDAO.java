package com.ssafy.dao;

import java.util.List;

import com.ssafy.vo.Food;

public interface FoodDAO {
	/**
	 * 검색 단어(word)에 해당하는 식품 정보(Food)를 검색해서 반환.
	 * @param word 검색 단어
	 * @return 조회한 식품 목록
	 */
	public List<Food> searchByName(String word);
	public List<Food> searchByMaker(String word);
	public List<Food> searchByMaterial(String word);

	/**
	 * 전체 식품(Food)를 반환 
	 * @return 전체 식품 목록
	 */
	public List<Food> searchAll();
	
	/**
	 * 식품 코드에 해당하는 식품정보를 검색해서 반환.
	 * 
	 * @param code 검색할 식품 코드
	 * @return 식품 코드에 해당하는 식품 정보, 없으면 null이 리턴됨
	 */
	public Food searchOne(int code);
	
	/**
	 * 가장 많이 검색한 Food 정보 리턴하기 web에서 구현할 내용.
	 * 
	 * @return
	 */
	public List<Food> searchBest();

	public List<Food> searchBestIndex();

	public void insert(Food food);
}
