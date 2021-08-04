package poly.controller;
//깃테스트 이진아

// 깃 테스트 주현
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
	
	
	// ================================= �쉶�썝媛��엯 �럹�씠吏�
	@RequestMapping(value = "user/join")
	public String join() {
		log.info("�쉶�썝媛��엯 �젒�냽");
		return "/user/join";
	}
	
	// ================================== �쉶�썝媛��엯 濡쒖쭅
	//�쉶�썝媛��엯 
		@RequestMapping(value = "user/user/join.do")
		@ResponseBody
		public String insertinfo(HttpServletRequest request) throws Exception {
			log.info("�쉶�썝媛��엯 �떆�옉");

			String id = request.getParameter("id");
			String password = request.getParameter("pwd");
			String name = request.getParameter("name");
			String date = request.getParameter("date");
			String gender = request.getParameter("gender");
			String allergy = request.getParameter("allergy");

			log.info(id);
			log.info(password);
			log.info(name);
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
