package poly.controller;
//깃테스트 이진아


//git test_김학겸

// 깃 테스트 주현

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.service.IJoinService;

@Controller
public class ContactController {

	private Logger log = Logger.getLogger(getClass());

	// =========================================== 고객센터페이지 출력
		@RequestMapping(value = "contact/contact")
		public String contact(HttpServletRequest request, ModelMap model) throws Exception {
			log.info("고객센터 페이지 출력");

			return "/contact/contact";
		}
		
		// =========================================== 메인페이지 출력
		@RequestMapping(value = "contact/emailcontact")
		public String forgot() {
			log.info("이메일문의 페이지 출력");
			return "contact/emailcontact";

		}
		
	
}
