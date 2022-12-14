package com.wsiet.common.controller;

import java.security.Principal;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
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

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/common/*")
@Log4j
@AllArgsConstructor
public class UsersController {

	private UsersService service;
	private JavaMailSender mailSender;
	
	@GetMapping("/user")
	public void userGET() {
		log.info("user main");
	}
	
	@GetMapping("/manager")
	public void managerGET() {
		log.info("manager main화면");
	}
	
	//회원가입 페이지 이동
	@GetMapping("/join")
	public void joinGET() {
		log.info("회원가입 화면");
	}
	
	//회원가입
	@PostMapping("/join")
	public String joinPOST(UserVO user) {
		
		log.warn(user.getAuthList());
		log.info(user);
		
		service.insertUser(user);
		
		return "redirect:/common/login";
	}
	
	//로그인 페이지 이동
	@GetMapping("/login")
	public void loginGET(String error, String logout, Model model, String user_id) {
		log.info("error: "+error);
		log.info("logout: "+logout);
		
		if(error != null) {
			System.out.println("========================="+model);
			
			
			model.addAttribute("error", "Login Error. Check Your Account");
			
		}
		
		if(logout != null) {
			model.addAttribute("logout", "logout!");
		}
		
	}
	
	/*
	 * @PostMapping("/login") //여기 vo값에 id,pw 빼고 다 null?? public String
	 * loginPOST(UserVO vo, HttpServletRequest req, RedirectAttributes rttr, Model
	 * model) { log.info("post login");
	 * 
	 * HttpSession session = req.getSession(); UserVO login =
	 * service.read(vo.getUser_id());
	 * 
	 * //로그인(1은 가입상태가 비활성=탈퇴) if(login == null || login.getStatus() == 1) {
	 * rttr.addFlashAttribute("result", "loginFalse"); return
	 * "redirect:/common/login"; }
	 * 
	 * log.info("입력한 pw : "+login.getPw()); log.info("db pw : "+vo.getPw());
	 * 
	 * boolean passwordMatch = pwEncoder.matches(vo.getPw(), login.getPw());
	 * log.info("pw 매칭 결과 : "+passwordMatch);
	 * 
	 * if(session.getAttribute("user") != null) { login = (UserVO)
	 * session.getAttribute("user");
	 * 
	 * if("C1001".equals(login.getCode_id())) { //사용자
	 * model.addAttribute("returnUrl", "/user/main"); }else { //점주
	 * model.addAttribute("returnUrl", "/manager/main"); } return
	 * "redirect:/common/loginSuccess"; }
	 * 
	 * if(login != null && passwordMatch == true){ session.setAttribute("user",
	 * login); String id = req.getParameter("user_id");
	 * rttr.addFlashAttribute("result", "loginOK");
	 * 
	 * if("C1001".equals(login.getCode_id())) { //사용자
	 * model.addAttribute("returnUrl", "/user/main"); }else { //점주
	 * model.addAttribute("returnUrl", "/manager/main"); }
	 * 
	 * UserVO user = (UserVO)session.getAttribute("user"); log.info("...: "+user);
	 * 
	 * SecurityContext context = SecurityContextHolder.getContext(); Authentication
	 * authentication = context.getAuthentication(); Collection<? extends
	 * GrantedAuthority> authorities = authentication.getAuthorities();
	 * 
	 * Iterator<? extends GrantedAuthority> iter = authorities.iterator();
	 * 
	 * while (iter.hasNext()) { GrantedAuthority auth = iter.next();
	 * System.out.println(auth.getAuthority()); }
	 * 
	 * return "/common/loginSuccess";
	 * 
	 * }else { session.setAttribute("user", null); rttr.addFlashAttribute("result",
	 * "loginFalse");
	 * 
	 * return "redirect:/common/login"; }
	 * 
	 * }
	 */
	
	@GetMapping("/logout")
	public String logoutGET(HttpSession session) {
		
		log.info("custom logout");
		session.invalidate();
		return "redirect:/common/login";
	}
	
	@PostMapping("/idCheck")
	@ResponseBody
	public Map<Object, Object> idCheck(@RequestBody String user_id){
		
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count =service.idCheck(user_id);
		map.put("cnt", count);
		
		log.info(map);
		
		return map;
	}
	
	//이메일 인증
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email) {

		log.info("이메일 데이터 전송 확인");
        log.info("인증번호 : " + email);
        
        //인증번호(난수 111111~999999 6자리) 생성
        Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111;
        log.info("인증번호 " + checkNum);
        
        //이메일 보내기
        String setFrom = "tg816@naver.com"; // email-config에 설정한 자신의 이메일 주소를 입력
		String toMail = email;
		String title = "[오늘 뭐 먹지?] 회원가입 인증 메일";
		String content = 
				"[오늘 뭐 먹지?]를 방문해주셔서 감사합니다."+"<br><br>"+
				"인증번호는 " + checkNum + "입니다.";
		
		try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
		String num = Integer.toString(checkNum);
    	
    	return num;
	}
	
	
}
