package com.spring.real_estate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.real_estate.dao.UploadDao;
import com.spring.real_estate.vo.UploadVO;

@Repository
public class UploadServiceImpl implements UploadService{
	@Autowired
	private UploadDao uploadDao; 
	
	@Override
	public List<UploadVO> selUpload() throws Exception {
		List<UploadVO> list = uploadDao.selUpload();
		return list;
	}

}
