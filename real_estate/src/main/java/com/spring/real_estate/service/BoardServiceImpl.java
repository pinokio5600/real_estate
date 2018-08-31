package com.spring.real_estate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.real_estate.dao.BoardDao;
import com.spring.real_estate.vo.BoardVO;

@Repository
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDao boardDao; 
	
	@Override
	public List<BoardVO> selBoard() throws Exception {
		List<BoardVO> list = boardDao.selBoard();
		return list;
	}

}