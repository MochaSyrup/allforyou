package poly.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.service.impl.UserService;
// 작업 중
@Controller
public class UserController {

	@Resource(name = "UserService")
	private UserService UserService;
	
	private Logger log = Logger.getLogger(this.getClass());

	// ================================= 로그인 로직
	@RequestMapping(value = "user/login")
	public String login() {
		log.info("로그인 접속");
		return "/user/login";
	}
	// ================================= 회원가입 로직
	@RequestMapping(value = "user/join")
	public String join() {
		log.info("회원가입 접속");
		return "/user/join";
	}
}
