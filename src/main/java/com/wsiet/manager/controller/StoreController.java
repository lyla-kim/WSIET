package com.wsiet.manager.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wsiet.common.domain.UserVO;
import com.wsiet.common.service.UsersService;
import com.wsiet.manager.domain.StoreAttachVO;
import com.wsiet.manager.domain.StoreVO;
import com.wsiet.manager.service.StoreService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/manager/*")
@Log4j
@AllArgsConstructor
public class StoreController {

	private StoreService stService;
	
	//등록한 상점 목록
	@GetMapping("/stlist")
	public void stlist(Model model) {
		log.info("store list:::");
		
		model.addAttribute("stlist", stService.getList());
	}
	
	//사업자번호 중복 체크
	@PostMapping("/bizNumCheck")
	@ResponseBody
	public Map<Object, Object> idCheck(@RequestBody String bizNum){
		
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = stService.bizNumCheck(bizNum);
		map.put("cnt", count);
		
		log.info(map);
		
		return map;
	}
	
	//상점 등록
	@GetMapping("/stregister")
	public void stregister() {
		log.info("get register......");
	}
	
	@PostMapping("/stregister")
	public String register(StoreVO stvo, RedirectAttributes rttr) {
		
		log.info("register::::"+stvo);
		
		if(stvo.getAttachList() != null) {
			stvo.getAttachList().forEach(attach -> log.info(attach));
		}
		
		stService.register(stvo);
		rttr.addAttribute("result", stvo.getSt_num());
		
		return "redirect:/manager/stlist";
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("st_num") int st_num, Model model) {
		log.info("/get");
		
		model.addAttribute("model", stService.getStore(st_num));
		
	}
	
	@GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<StoreAttachVO>> getAttachList(int st_num){
		log.info("getAttachList :: "+st_num);
		
		return new ResponseEntity<>(stService.getAttachList(st_num), HttpStatus.OK);
	}
	
	@GetMapping("/stmodify")
	public void stmodify() {
	}
	
	@GetMapping("/stdelete")
	public void stdelete() {
	}
	
	
	
	
}
