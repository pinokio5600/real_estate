package com.real_estate_adm.dao;

import com.real_estate_adm.vo.Region_doVO;

public interface HomeDao {
	public String getNowTime();
	
	public void insDo(Region_doVO vo);
}
