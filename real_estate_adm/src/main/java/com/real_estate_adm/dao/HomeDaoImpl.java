package com.real_estate_adm.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.real_estate_adm.vo.RegionVO;

@Repository
public class HomeDaoImpl implements HomeDao{
	
	@Inject	// == @Autowired
	private SqlSession sqlSession;
	@Autowired
	private static final String namespace = "com.real_estate_adm.dao.HomeDao"; 

	
	@Override
	public String getNowTime() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insDo(RegionVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insDo", vo);
	}
	@Override
	public void insSi(RegionVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+".insSi", vo);
	}
	@Override
	public void insGu(RegionVO vo) {
		sqlSession.insert(namespace+".insGu", vo);
		
	}

	@Override
	public List<RegionVO> selDo() {
		return sqlSession.selectList(namespace+".selDo");
	}
	@Override
	public List<RegionVO> selSi(int region_do_val) {
		return sqlSession.selectList(namespace+".selSi", region_do_val);
	}
	@Override
	public List<RegionVO> selGu(RegionVO vo) {
		return sqlSession.selectList(namespace+".selGu", vo);
	}
}
