package com.real_estate_adm.service;

import java.util.List;

import com.real_estate_adm.vo.RegionVO;

public interface HomeService {
	public List<RegionVO> selDo() throws Exception;
	public List<RegionVO> selSi(int region_do_val) throws Exception;
	public List<RegionVO> selGu(RegionVO vo) throws Exception;
}
