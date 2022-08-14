package com.wsiet.common.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {

	//사용자가 권한이 없는 페이지에 들어갔을 때 나오는 화면 
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("access Denied : "+auth);
		
		model.addAttribute("msg", "Access Denied");
	}
}
