package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.ProjectsDTO;
import poly.service.ILoginService;
import poly.util.CmmUtil;

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
	@RequestMapping(value = "Projects/index")
	public String index(HttpServletRequest request, HttpSession session) throws Exception {

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

		mDTO = LoginService.Loginpage(mDTO);
		log.info("이름"+ mDTO.getUser_name());
		
		String result = "";
		if(CmmUtil.nvl(mDTO.getUser_id()).equals(id)) {
			session.setAttribute("id", id);
			session.setAttribute("name", mDTO.getUser_name());
			mDTO=null;
			log.info("로그인 성공");
			result = "/alert/loginAlert";
		}
		
		else {
			result = "/alert/loginfailAlert";
		}

		return result;
	}
}
