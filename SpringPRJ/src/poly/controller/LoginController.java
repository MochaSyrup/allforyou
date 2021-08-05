package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.ProjectsDTO;
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
	//------------------------------------- (임시) 비밀번호 찾기 페이지 전입 
	@RequestMapping(value = "user/forgot")
	public String forgot() {
		log.info("비밀번호 찾기 접속");
		return "/user/forgot";
	}
	
	//================================== 로그인 처리 로직
	@RequestMapping(value = "Projects/index")
	public String index(HttpServletRequest request) throws Exception {

		String id = request.getParameter("id");
		String password = request.getParameter("pwd");
		log.info(id);
		log.info(password);
		log.info("로그인 시작");

		ProjectsDTO mDTO = new ProjectsDTO();
		mDTO.setUser_id(id);
		mDTO.setUser_pwd(password);
		log.info(mDTO.getUser_id());
		log.info(mDTO.getUser_pwd());

		int res = LoginService.Loginpage(mDTO);

		String result = "";
		if (res == 0) {
			result = "/index";

		} else if (res == 1) {
			result = "삐빅 - 오류입니다 ID/PW를 다시 확인해주세요 !";
		} else {
			result = "ERROR : 3064";
		}

		return result;
	}
}
