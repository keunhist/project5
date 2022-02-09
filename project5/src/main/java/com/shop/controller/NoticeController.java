package com.shop.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.service.NoticeService;
import com.shop.vo.NoticeVO;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	private static final Logger log = LoggerFactory.getLogger(NoticeController.class);
		
		@Autowired
	    private NoticeService nservice;
	
		@GetMapping("/list")
	    // => @RequestMapping(value="list", method=RequestMethod.GET)
	    public void boardListGET(Model model) {
	        
	        log.info("공지사항 목록 페이지 진입");
	        
	        model.addAttribute("list", nservice.getList());
	        
	    }
	    
	    @GetMapping("/enroll")
	    // => @RequestMapping(value="enroll", method=RequestMethod.GET)
	    public void boardEnrollGET() {
	        
	        log.info("공지사항 등록 페이지 진입");
	        
	    }
	    
	    /* 공지사항 등록 */
	    @PostMapping("/enroll")
	    public String boardEnrollPOST(NoticeVO notice, RedirectAttributes rttr) {
	        
	        log.info("NoticeVO : " + notice);
	        
	        nservice.noticeEnroll(notice);
	        
	        rttr.addFlashAttribute("result", "enroll success");
	        
	        return "redirect:/notice/list";
	        
	    }
}
