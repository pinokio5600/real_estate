package com.spring.real_estate.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.real_estate.vo.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Inject	// == @Autowired
	private SqlSession sqlSession;
	@Autowired
	private static final String namespace = "com.spring.real_estate.dao.BoardDao";
	
	@Override
	public List<BoardVO> selBoard() {
		return sqlSession.selectList(namespace+".selBoard");
	}
}