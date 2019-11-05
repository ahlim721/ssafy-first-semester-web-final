package com.ssafy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.dao.MemberDAO;
import com.ssafy.vo.Allergy;
import com.ssafy.vo.Food;
import com.ssafy.vo.Ingestion;
import com.ssafy.vo.Member;
import com.ssafy.vo.Member_Has_Allergy;

@Service("mservice")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;

	// 회원가입
	@Override
	public void insert(Member m, String[] acode) {
		dao.insert(m);
		for (String a : acode) {
			dao.insertAllergy(new Member_Has_Allergy(m.getId(), a));
		}
	}

	@Override
	public void modify(Member m, String[] acode) {
		dao.modify(m);
		dao.deleteAllergy(m.getId());
		if (acode != null) {
			for (int i = 0; i < acode.length; i++) {
				dao.insertAllergy(new Member_Has_Allergy(m.getId(), acode[i]));
			}
		}
	}

	@Override
	public void delete(String id) {
		dao.delete(id);
	}

	@Override
	public Member searchOne(String id) {
		return dao.searchOne(id);
	}

	@Override
	public void insertIngestion(Ingestion igt) {
		dao.insertIngestion(igt);
	}

	@Override
	public void deleteIngestion(Ingestion igt) {
		dao.deleteIngestion(igt);
	}

	@Override
	public List<Food> searchIngestion(String mid) {
		return dao.searchIngestion(mid);
	}

	@Override
	public void insertAllergy(Member_Has_Allergy mha) {
		dao.insertAllergy(mha);
	}

	@Override
	public List<Member_Has_Allergy> searchAllergy(String mid) {
		return dao.searchAllergy(mid);
	}

	@Override
	public void deleteAllergy(String id) {
		dao.deleteAllergy(id);
	}

	@Override
	public Allergy getAname(String acode) {
		return dao.getAname(acode);
	}
}
