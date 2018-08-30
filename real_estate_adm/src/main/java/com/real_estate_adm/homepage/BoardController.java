package com.real_estate_adm.homepage;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.real_estate_adm.dao.BoardDao;
import com.real_estate_adm.dao.UploadDao;
import com.real_estate_adm.service.BoardService;
import com.real_estate_adm.vo.BoardVO;
import com.real_estate_adm.vo.UploadVO;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private BoardDao dao;
	
	@Autowired
	private UploadDao uploadDao;
	
	@Autowired
	private BoardService boardService;
		
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String write(MultipartHttpServletRequest req, BoardVO boardVO) throws Exception {				
		List<MultipartFile> fileList = req.getFiles("file");
		String path = req.getSession().getServletContext().getRealPath("/resources/upload/");
		
		
		dao.insBoard(boardVO);
		
		for(MultipartFile f : fileList){
			String originName = f.getOriginalFilename();
			if(originName != null && originName.trim() != ""){
				int pos = originName.lastIndexOf(".");
				String ext = originName.substring(pos);
				logger.info("파일이름 : {}", originName);
				logger.info("확장자명 : {}", ext);
				
				String title = boardVO.getTitle();
				
				upload(f,ext, path, originName, title);
			}
		}
		
		return "redirect:/form";
	}	
	
	public String upload(MultipartFile file, String ext, String path, String originName, String title) throws Exception{
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		
		logger.info("path : " + path);
		logger.info("uuid : " + uuid);
		
		File saveFile = new File(path, uuid+ext);
		
		try{
			file.transferTo(saveFile);
			UploadVO vo = new UploadVO();
			
			String src = path+uuid+ext;
			logger.info("src : " + src);	
			vo.setUpload_name(originName);
			vo.setUpload_src(src);
			
			int board_seq  = boardService.selBoard_seq(title);
			
			vo.setBoard_seq(board_seq);
			
			uploadDao.insUpload(vo);
		}catch(IOException e){
			e.printStackTrace();
			return null;
		}
		
		return uuid;
	}
}
