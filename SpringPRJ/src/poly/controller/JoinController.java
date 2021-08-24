package poly.controller;
//깃테스트 이진아


//git test_김학겸

// 깃 테스트 주현

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


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
		log.info("로그인 페이지 출력");
		return "/user/join";
	}
	
	// ================================== 회원가입 로직
	
		@RequestMapping(value = "user/user/join.do")
		public String insertinfo(HttpServletRequest request, ModelMap model) throws Exception {
			log.info("로그인 로직 실행");

			String id = request.getParameter("id");
			String password = request.getParameter("pwd");
			String name = request.getParameter("name");
			String year = request.getParameter("year");
			String month = request.getParameter("month");
			String datey = request.getParameter("date");
			String gender = request.getParameter("gender");
			String allergy = request.getParameter("allergy");
			String date = year+("-"+month)+("-"+datey);
			log.info(id);
			log.info(password);
			log.info(name);
			log.info(year);
			log.info(month);
			log.info(datey);
			log.info(date);
			log.info(gender);
			log.info(allergy);
			ProjectsDTO uDTO = new ProjectsDTO();

			uDTO.setUser_id(id);
			uDTO.setUser_pwd(password);
			uDTO.setUser_name(name);
			uDTO.setUser_date(date);
			uDTO.setUser_gender(gender);
			uDTO.setUser_allergy(allergy);

			int res = JoinService.insertinfo(uDTO);

			
			if (res == 0) {
				log.info("회원가입 실패");
			} else if (res == 1) {
				log.info("회원가입 성공");
			} 
			
			model.addAttribute("res", String.valueOf(res));
			return "/alert/joinAlert";
		}
		
		
}
