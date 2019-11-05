package com.ssafy.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.mapper.MemberMapper;
import com.ssafy.vo.Allergy;
import com.ssafy.vo.Food;
import com.ssafy.vo.Ingestion;
import com.ssafy.vo.Member;
import com.ssafy.vo.Member_Has_Allergy;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	MemberMapper mapper;
	
	@Override
	public void insert(Member m) {
		mapper.insert(m);
	}

	@Override
	public void insertAllergy(Member_Has_Allergy mha) {
		mapper.insertAllergy(mha);
	}

	@Override
	public void modify(Member m) {
		mapper.modify(m);
	}

	@Override
	public void deleteAllergy(String id) {
		mapper.deleteAllergy(id);
	}

	@Override
	public void delete(String id) {
		mapper.delete(id);
	}

	@Override
	public Member searchOne(String id) {
		return mapper.searchOne(id);
	}

	@Override
	public void deleteIngestion(Ingestion igt) {
		mapper.deleteIngestion(igt);
	}

	@Override
	public List<Food> searchIngestion(String mid) {
		return mapper.searchIngestion(mid);
	}

	@Override
	public void insertIngestion(Ingestion igt) {
		mapper.insertIngestion(igt);
	}

	@Override
	public List<Member_Has_Allergy> searchAllergy(String mid) {
		return mapper.searchAllergy(mid);
	}

	@Override
	public Allergy getAname(String acode) {
		return mapper.getAname(acode);
	}
}
