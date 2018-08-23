package com.real_estate_adm.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.real_estate_adm.vo.RegionVO;

@Service(value="homeDao")
public interface HomeDao {
	public String getNowTime();
	
	public void insDo(RegionVO vo);
	public void insSi(RegionVO vo);
	
	
	public List<RegionVO> selDo();
	public List<RegionVO> selSi(int region_do_val);

}
