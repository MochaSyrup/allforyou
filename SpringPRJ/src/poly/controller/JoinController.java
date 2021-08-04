package poly.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.ProjectsDTO;
import poly.service.IJoinService;

@Controller
public class JoinController {

	@Resource(name = "JoinService")
	private IJoinService JoinService;
	
	private Logger log = Logger.getLogger(getClass());
	
	
	// ================================= 회원가입 페이지
	@RequestMapping(value = "user/join")
	public String join() {
		log.info("회원가입 접속");
		return "/user/join";
	}
	
	// ================================== 회원가입 로직
	//회원가입 
		@RequestMapping(value = "users/join")
		@ResponseBody
		public String insertinfo(HttpServletRequest request) throws Exception {
			log.info("회원가입 시작");

			String id = request.getParameter("id");
			String password = request.getParameter("pwd");
			String name = request.getParameter("name");

			log.info(id);
			log.info(password);
			log.info(name);
			ProjectsDTO uDTO = new ProjectsDTO();

			uDTO.setUser_id(id);
			uDTO.setUser_pwd(password);
			uDTO.setUser_name(name);

			int res = JoinService.insertinfo(uDTO);

			String result = "";
			if (res == 0) {
				result = "fail";
			} else if (res == 1) {
				result = "succes";
			} else {
				result = "error";
			}

			return result;
		}
		
		
}
