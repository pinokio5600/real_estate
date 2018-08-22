package com.real_estate_adm.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.real_estate_adm.vo.Region_doVO;

@Repository
public class HomeDaoImpl implements HomeDao{
	
	@Autowired	// == @Inject
	private SqlSession sqlSession;
	@Autowired
	private static final String namespace = "com.real_estate_adm.dao.HomeDao"; 

	
	@Override
	public String getNowTime() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insDo(Region_doVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insDo", vo);
	}
	
	@Override
	public String selDo() {
		// TODO Auto-generated method stub
		return null;
	}

}
