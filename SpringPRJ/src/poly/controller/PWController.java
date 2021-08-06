package poly.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PWController {

	
	
	
	// ================================= 비밀번호 찾기 페이지
	@RequestMapping(value = "user/forgot")
	public String forgot() {
		
		return "/user/forgot";
	}
	
	// ================================== 비밀번호 로직
	
		
		
}
