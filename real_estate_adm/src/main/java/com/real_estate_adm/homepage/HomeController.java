package com.real_estate_adm.homepage;

import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		
		//HomeDao homeDao = sqlSession.getMapper(HomeDao.class);
		//String getNowTime = homeDao.getNowTime();
		//model.addAttribute("nowTime", getNowTime);
		
		return "index";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public ModelAndView form(@RequestParam(required = false) String do_val) throws Exception {
		ModelAndView mv=new ModelAndView();
		int region_do_val;
		if(do_val != null){
			region_do_val = Integer.parseInt(do_val);
		}else{
			region_do_val = 0;
		}		
		
		logger.info("do_val ================================" + region_do_val);
		List<RegionVO> selDo = service.selDo();
		//List<RegionVO> selSi = service.selSi(region_do_val);
		
		//logger.info("selSi ================================" + selSi);
		mv.setViewName("/form");		
		mv.addObject("selDo", selDo);
		//mv.addObject("selSi", selSi);
		
		return mv;
	}
	
	@RequestMapping(value = "/regionReg", method = RequestMethod.GET)
	public String regionReg(String region_do, String region_si, String region_do_val, String region_gu, String region_si_val) {
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
		}else if (region_gu != null){
			int do_val = Integer.parseInt(region_do_val);
			int si_val = Integer.parseInt(region_si_val);
			vo.setRegion_gu(region_gu);
			vo.setRegion_do_val(do_val);
			vo.setRegion_si_val(si_val);
			
			dao.insGu(vo);
		}
		
		return "redirect:/form";
	}
	
	@RequestMapping(value = "/selectChange")
	public void selectChange(@RequestParam(required = false) String do_val
			,HttpServletResponse response
			,@RequestParam(required = false) String type
			,@RequestParam(required = false) String si_val) throws Exception {
		logger.info("selectChange in controller");
		int region_do_val;
		int region_si_val;
		if(type.equals("do")){
			if(do_val != null && do_val != ""){
				region_do_val = Integer.parseInt(do_val);
			}else{
				region_do_val = 0;
			}		
			
			logger.info("do_val ================================" + region_do_val);
			List<RegionVO> selSi2 = service.selSi(region_do_val);
			
			logger.info("selSi2 ================================"+ selSi2);	
			
			JSONObject json=new JSONObject();   
			json.put("selSi2", toJson(selSi2));  
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print(json.toString());
			//System.out.println("view로 보낼값 : " + json);
		}else if(type.equals("si")){
			if(si_val != null && si_val != ""){
				region_do_val = Integer.parseInt(do_val);
				region_si_val = Integer.parseInt(si_val);
			}else{
				region_do_val = 0;
				region_si_val = 0;
			}	
			RegionVO vo = new RegionVO();
			vo.setRegion_si_val(region_si_val);
			vo.setRegion_do_val(region_do_val);
			
			List<RegionVO> selgu = service.selGu(vo);
			
			logger.info("selgu ================================"+ selgu);	
			
			JSONObject json=new JSONObject();   
			json.put("selGu", toJson(selgu));  
			
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print(json.toString());
		}

	}
	
	public static <VO> JSONArray toJson(List<VO> data) throws Exception{
		JSONArray jsonArray = new JSONArray();
		for(VO vo : data){
			jsonArray.put(toMap(vo));
			logger.info("toMap(vo) : "+toMap(vo));
		}
		System.out.println("jsonAraay toString : " + jsonArray);
		return jsonArray;
	}
	/**
	 * vo 의 값들을 key : 필드명, value : 필드값 으로 하는 Map 으로 리턴
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public static <VO> Map<String, Object> toMap(VO vo) throws Exception{
		Map<String, Object> result = new HashMap<>();
		Field[] fields = vo.getClass().getDeclaredFields();
		for(Field f : fields){
			if(!f.isAccessible()){
				f.setAccessible(true);
			}
			result.put(f.getName(), f.get(vo));
			//System.out.println(f.getName() + " : " + f.get(vo));
		}
		return result;
	}


}
