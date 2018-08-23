package com.real_estate_adm.homepage;

import java.io.Console;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.real_estate_adm.dao.HomeDao;
import com.real_estate_adm.service.HomeService;
import com.real_estate_adm.vo.RegionVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;	
	
	@Autowired
	private HomeDao dao;
	@Autowired
	private HomeService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("Welcome admin site!");
		
		HomeDao homeDao = sqlSession.getMapper(HomeDao.class);
		String getNowTime = homeDao.getNowTime();
		model.addAttribute("nowTime", getNowTime);
		
		return "index";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public ModelAndView form(String region_do_val) throws Exception {
		ModelAndView mv=new ModelAndView();
		int do_val;
		if(region_do_val != null){
			do_val = Integer.parseInt(region_do_val);
		}else{
			do_val = 0;
		}
		
		List<RegionVO> selDo = service.selDo();
		List<RegionVO> selSi = service.selSi(do_val);
		
		mv.setViewName("/form");		
		mv.addObject("selDo", selDo);
		mv.addObject("selSi", selSi);
		
		return mv;
	}
	
	@RequestMapping(value = "/regionReg", method = RequestMethod.GET)
	public String regionReg(String region_do, String region_si, String region_do_val) {
		RegionVO vo = new RegionVO();
		
		if(region_do != null){
			vo.setRegion_do(region_do);
	
			dao.insDo(vo);
		}else if(region_si != null){
			int do_val = Integer.parseInt(region_do_val);	
			System.out.println(do_val);
			
			vo.setRegion_si(region_si);
			vo.setRegion_do_val(do_val);
			
			dao.insSi(vo);
		}
		
		return "redirect:/form";
	}
	@RequestMapping(value = "/region_si", method = RequestMethod.GET)
	public String region_si(String region_si, int region_do_val) {
		RegionVO vo = new RegionVO();
		vo.setRegion_si(region_si);
		vo.setRegion_do_val(region_do_val);
		
		dao.insDo(vo);
		
		return "redirect:/form";
	}
	
}
