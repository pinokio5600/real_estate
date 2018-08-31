package com.spring.real_estate.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.real_estate.vo.BoardVO;

@Service(value="boardDao")
public interface BoardDao {
	public List<BoardVO> selBoard();
}
