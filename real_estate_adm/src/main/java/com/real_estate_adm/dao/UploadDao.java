package com.real_estate_adm.dao;

import org.springframework.stereotype.Service;

import com.real_estate_adm.vo.UploadVO;

@Service(value="uploadDao")
public interface UploadDao {
	public void insUpload(UploadVO vo);
}
