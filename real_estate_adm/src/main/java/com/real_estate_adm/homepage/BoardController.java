package com.real_estate_adm.homepage;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.real_estate_adm.dao.BoardDao;
import com.real_estate_adm.service.BoardService;
import com.real_estate_adm.vo.BoardVO;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private BoardDao dao;
	@Autowired
	private BoardService service;
		
	@RequestMapping(value = "/board/write", method = RequestMethod.GET)
	public String write(String title, String img_src, String img_name, String region_do_val, String region_si_val, String region_gu_val
			, MultipartHttpServletRequest request, MultipartFile uploadFile, Object obj ) {		
		BoardVO vo = new BoardVO();
		
		String path = "resources/upload/";
        String fileName = "";        
        OutputStream out = null;
        PrintWriter printWriter = null;
		
		try{
			fileName = uploadFile.getOriginalFilename();
            byte[] bytes = uploadFile.getBytes();
            
            System.out.println("UtilFile fileUpload fileName : " + fileName);
            System.out.println("UtilFile fileUpload uploadPath : " + path);
            
            File file = new File(path);
            
            // 파일명이 중복으로 존재할 경우
            if (fileName != null && !fileName.equals("")) {
                if (file.exists()) {
                    fileName = fileName + "_" + System.currentTimeMillis();                    
                    file = new File(path + fileName);
                }
            }
            System.out.println("UtilFile fileUpload final fileName : " + fileName);
            System.out.println("UtilFile fileUpload file : " + file);
            
            out = new FileOutputStream(file);            
            System.out.println("UtilFile fileUpload out : " + out);            
            out.write(bytes);
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try{
				if(out != null){
					out.close();
				}
				if(printWriter != null) {
                    printWriter.close();
                }
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		vo.setTitle(title);
		vo.setImg_src(img_src);
		vo.setImg_name(img_name);
		vo.setRegion_do_val(region_do_val);
		vo.setRegion_si_val(region_si_val);
		vo.setRegion_gu_val(region_gu_val);
		
		dao.insBoard(vo);
		
		return "redirect:/form";
	}
	
}
