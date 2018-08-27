package com.real_estate_adm.homepage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
		
	@RequestMapping(value = "/board/write", method = RequestMethod.GET)
	public String write(Model model) {		
		return "index";
	}
	
}
