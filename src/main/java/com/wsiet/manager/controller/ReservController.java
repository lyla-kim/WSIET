package com.wsiet.manager.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wsiet.common.domain.UserVO;
import com.wsiet.common.service.UsersService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/manager/*")
@Log4j
@AllArgsConstructor
public class ReservController {

	
	@GetMapping("/reservlist")
	public void relist() {
	}
	
	@GetMapping("/reservregister")
	public void reregister() {
	}
	
	@GetMapping("/reservmodify")
	public void remodify() {
	}
	
	@GetMapping("/reservdelete")
	public void redelete() {
	}
	
	
}
