package com.wsiet.manager.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

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
	
	@GetMapping("/stget")
	public void get(@RequestParam("st_num") int st_num, Model model) {
		log.info("/get");
		
		model.addAttribute("store", stService.getStore(st_num));
		
	}
	
	//상세보기에서 이미지 출력
	@GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<StoreAttachVO>> getAttachList(int st_num){
		log.info("getAttachList :: "+st_num);
		
		return new ResponseEntity<>(stService.getAttachList(st_num), HttpStatus.OK);
	}
	
	@GetMapping("/stmodify")
	public void stmodify(@RequestParam("st_num") int su_num, Model model) {
		log.info("/modify 화면 이동");
		
		model.addAttribute("store", stService.getStore(su_num));
	}
	
	@PostMapping("/stmodify")
	public String stmodify(StoreVO vo, RedirectAttributes rttr) {
		log.info("modify::"+vo);
		
		if(vo.getAttachList() != null) {
			List<StoreAttachVO> attachList = stService.getAttachList(vo.getSt_num());
			deleteFiles(attachList);
			vo.getAttachList().forEach(attach -> log.info(attach));
		}
		
		boolean result = stService.modify(vo);
		
		if(result) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/manager/stlist";
	}
	
	@GetMapping("/stdelete")
	/* @ResponseBody */
	/* @PreAuthorize("principal.username == #user_id")  user_id? or store.user_id? */
	public String stdelete(@RequestParam("st_num") int st_num, RedirectAttributes rttr) {
		log.info("delete..."+st_num);
		
		List<StoreAttachVO> attachList = stService.getAttachList(st_num);
		
		if(stService.remove(st_num)) {
			deleteFiles(attachList);
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/manager/stlist";
	}
	
	private void deleteFiles(List<StoreAttachVO> attachList) {
		if(attachList == null || attachList.size() == 0) {
			return;
		}
		
		attachList.forEach(attach -> {
			try {
				Path file = Paths.get("c:\\wsiet_img\\"+attach.getSt_uuid()+"_"+attach.getSt_filename());
				Files.deleteIfExists(file);
				
				Path thumbNail = Paths.get("c:\\wsiet_img\\"+"s_"+attach.getSt_uuid()+"_"+attach.getSt_filename());
				Files.delete(thumbNail);
			}catch(Exception e) {
				e.printStackTrace();
			}
		});
	}
	
	/*
	 * @DeleteMapping("/stDelete/{st_num}") public void
	 * delete(@PathVariable("st_num") int st_num) throws Exception{
	 * log.info("delete st_num:::"+st_num); stService.remove(st_num); }
	 */
}
