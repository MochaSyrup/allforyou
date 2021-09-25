package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	private Logger log = Logger.getLogger(getClass());

	// =========================================== 메인페이지 출력
	@RequestMapping(value = "index")
	public String Index() {
		log.info(this.getClass());
 return "/index";
	}
	
	@RequestMapping(value = "translate/upload")
	public String forgot() {
		log.info("사진 업로드 페이지 출력");
		return "/translate/upload";

	}
}
