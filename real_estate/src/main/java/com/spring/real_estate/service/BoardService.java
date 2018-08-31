package com.spring.real_estate.service;

import java.util.List;

import com.spring.real_estate.vo.BoardVO;

public interface BoardService {
	public List<BoardVO> selBoard() throws Exception;
}
