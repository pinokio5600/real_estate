package com.spring.real_estate.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.real_estate.vo.UploadVO;

@Service(value="uploadDao")
public interface UploadDao {
	public List<UploadVO> selUpload();
}
