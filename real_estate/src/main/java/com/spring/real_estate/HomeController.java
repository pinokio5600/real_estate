package com.spring.real_estate;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.real_estate.service.BoardService;
import com.spring.real_estate.service.UploadService;
import com.spring.real_estate.vo.BoardVO;
import com.spring.real_estate.vo.UploadVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private UploadService uploadService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mv=new ModelAndView();		
		
		List<BoardVO> selBoard = boardService.selBoard();
		List<UploadVO> selUpload = uploadService.selUpload();
		
		mv.setViewName("/main");
		mv.addObject("selBoard",selBoard);
		mv.addObject("selUpload", selUpload);
		
		
		
		return mv;
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		
		return "board/list";
	}
}
