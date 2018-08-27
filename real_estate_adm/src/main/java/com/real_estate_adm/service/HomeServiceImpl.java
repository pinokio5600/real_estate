package com.real_estate_adm.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.real_estate_adm.dao.HomeDao;
import com.real_estate_adm.vo.RegionVO;
import com.sun.istack.internal.logging.Logger;

@Repository
public class HomeServiceImpl implements HomeService {
	Logger log = Logger.getLogger(this.getClass());
	
	@Inject
	private HomeDao homeDao;
	
	public List<RegionVO> selDo() throws Exception {
		List<RegionVO> list = homeDao.selDo();
		return list;
	}

	public List<RegionVO> selSi(int region_do_val) throws Exception {
		List<RegionVO> list = homeDao.selSi(region_do_val);
		return list;
	}

	public List<RegionVO> selGu(RegionVO vo) throws Exception {
		List<RegionVO> list = homeDao.selGu(vo);
		return list;
	}
}
