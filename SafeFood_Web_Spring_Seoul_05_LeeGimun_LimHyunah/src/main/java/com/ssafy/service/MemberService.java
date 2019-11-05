package com.ssafy.service;

import java.util.List;

import com.ssafy.vo.Allergy;
import com.ssafy.vo.Food;
import com.ssafy.vo.Ingestion;
import com.ssafy.vo.Member;
import com.ssafy.vo.Member_Has_Allergy;

public interface MemberService {
	// 회원가입
	public void insert(Member m, String[] acode);

	// 회원 정보 수정
	public void modify(Member m, String[] acode);

	// 회원 정보 삭제 - 탈퇴
	public void delete(String id);
	
	void insertAllergy(Member_Has_Allergy mha);

	List<Member_Has_Allergy> searchAllergy(String mid);
	
	Allergy getAname(String acode);

	void deleteAllergy(String id);

	// 로그인 할 때
	public Member searchOne(String id);

	// 섭취 식품 추가
	public void insertIngestion(Ingestion igt);
	
	// 섭취 식품 삭제
	public void deleteIngestion(Ingestion igt);
	
	// 섭취 식품 리스트 조회
	public List<Food> searchIngestion(String mid);
}
