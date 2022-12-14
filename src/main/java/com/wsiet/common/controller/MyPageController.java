package com.wsiet.common.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wsiet.common.domain.UserVO;
import com.wsiet.common.service.MyPageService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage")
@AllArgsConstructor
public class MyPageController {

	private MyPageService service;
	
	@GetMapping("/list")
	public void list() {
		
	}
	
	@GetMapping("/modify")
	public void modify() {
		
	}
	
	@GetMapping("/pwmodify")
	public void pwmodify() {
		
	}
}
