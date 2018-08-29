package com.real_estate_adm.homepage;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.real_estate_adm.dao.BoardDao;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private BoardDao dao;
		
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String write(HttpServletRequest request, CommandMap commandMap) {		
		
		dao.insBoard(commandMap.getMap(), request);
		
		return "redirect:/form";
	}	

	public static String getUuid(){
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}
