package poly.controller;


import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FoodController {
	
	private Logger log = Logger.getLogger(getClass());

	// =========================================== 메인페이지 출력
	@RequestMapping(value = "community/boardfood")
	public String boardfood(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass().getName()+"음식게시판 페이지 출력");

		return "/community/boardfood";
	}
}
