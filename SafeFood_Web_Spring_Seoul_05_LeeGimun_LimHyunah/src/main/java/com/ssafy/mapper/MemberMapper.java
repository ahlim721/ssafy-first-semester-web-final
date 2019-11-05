package com.ssafy.mapper;

import java.util.List;

import com.ssafy.vo.Allergy;
import com.ssafy.vo.Food;
import com.ssafy.vo.Ingestion;
import com.ssafy.vo.Member;
import com.ssafy.vo.Member_Has_Allergy;

public interface MemberMapper {

	void insert(Member m);

	void insertAllergy(Member_Has_Allergy mha);
	
	List<Member_Has_Allergy> searchAllergy(String mid);
	
	Allergy getAname(String acode);

	void modify(Member m);

	void deleteAllergy(String mid);

	void delete(String id);

	Member searchOne(String id);
	
	//------------------------------------------//

	Food searchIngestion(Ingestion igt);

	void deleteIngestion(Ingestion igt);

	void insertIngestion(Ingestion igt);

	List<Food> searchIngestion(String mid);



}
