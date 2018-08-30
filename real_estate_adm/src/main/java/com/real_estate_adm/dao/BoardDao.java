package com.real_estate_adm.dao;

import org.springframework.stereotype.Service;

import com.real_estate_adm.vo.BoardVO;

@Service(value="boardDao")
public interface BoardDao {
	public void insBoard(BoardVO vo);

	public int selBoard_seq(String title);
}
