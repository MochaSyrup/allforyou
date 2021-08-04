package poly.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.service.ILoginService;

@Controller
public class LoginController {
	
	@Resource(name = "LoginService")
	private ILoginService LoginService;
	
	//==================================================== 로그 찍기 위한 메소드
	private Logger log = Logger.getLogger(this.getClass());
	
	//================================== 로그인 페이지 진입
	@RequestMapping(value = "user/login")
	public String login() {
		log.info("로그인 접속");
		return "/user/login";
	}
	
	//================================== 로그인 처리 로직

}
