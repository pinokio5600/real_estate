package com.real_estate_adm.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.real_estate_adm.vo.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Inject	// == @Autowired
	private SqlSession sqlSession;
	@Autowired
	private static final String namespace = "com.real_estate_adm.dao.BoardDao";
	
	@Override
	public void insBoard(BoardVO vo) {
		sqlSession.insert(namespace+".insBoard", vo);		
	}

	@Override
	public int selBoard_seq(String title) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".selBoard_seq", title);
	} 
}
