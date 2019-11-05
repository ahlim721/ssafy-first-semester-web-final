package com.ssafy.dao;

import java.util.List;

import com.ssafy.vo.Allergy;
import com.ssafy.vo.Food;
import com.ssafy.vo.Ingestion;
import com.ssafy.vo.Member;
import com.ssafy.vo.Member_Has_Allergy;

public interface MemberDAO {

	void insert(Member m);

	void modify(Member m);

	void insertAllergy(Member_Has_Allergy mha);

	List<Member_Has_Allergy> searchAllergy(String mid);
	
	Allergy getAname(String acode);

	void deleteAllergy(String id);

	void delete(String id);

	Member searchOne(String id);

	// ---------------------------------//

	void deleteIngestion(Ingestion igt);

	List<Food> searchIngestion(String mid);

	void insertIngestion(Ingestion igt);

}
