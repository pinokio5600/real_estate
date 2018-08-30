package com.real_estate_adm.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.real_estate_adm.vo.UploadVO;

@Repository
public class UploadDaoImpl implements UploadDao {
	@Inject	// == @Autowired
	private SqlSession sqlSession;
	@Autowired
	private static final String namespace = "com.real_estate_adm.dao.UploadDao";
	
	@Override
	public void insUpload(UploadVO vo) {
		sqlSession.insert(namespace+".insUpload", vo);		
	} 
}
