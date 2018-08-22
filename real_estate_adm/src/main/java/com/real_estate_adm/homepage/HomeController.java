package com.real_estate_adm.homepage;

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
import com.real_estate_adm.vo.Region_doVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;	
	
	@Autowired
	private HomeDao dao;
	
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
	public String form(Model model) {
		HomeDao homeDao = sqlSession.getMapper(HomeDao.class);
		String selDo = homeDao.selDo();
		model.addAttribute("selDo", selDo);
		
		return "form";
	}
	
	@RequestMapping(value = "/region_do", method = RequestMethod.GET)
	public String region_do(String region_do) {
		Region_doVO vo = new Region_doVO();
		vo.setRegion_do(region_do);
		
		dao.insDo(vo);
		
		return "redirect:/form";
	}
	
}
