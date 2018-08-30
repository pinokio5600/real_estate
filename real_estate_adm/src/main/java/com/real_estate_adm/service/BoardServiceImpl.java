package com.real_estate_adm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.real_estate_adm.dao.BoardDao;

@Repository
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDao boardDao; 
	
	@Override
	public int selBoard_seq(String title) throws Exception {
		int board_seq = boardDao.selBoard_seq(title);
		return board_seq;
	}

}
