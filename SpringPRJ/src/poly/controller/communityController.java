package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class communityController {
	
	private Logger log = Logger.getLogger(getClass());

	// =========================================== 커뮤니티 게시판 리스트 페이지 출력
	@RequestMapping(value = "community/boardlist")
	public String boardlist() {
		log.info("커뮤니티 게시판 페이지 출력");
		return "/community/boardlist";
	}
	
	// =========================================== 커뮤니티 게시판 글쓰기 페이지 출력
	@RequestMapping(value="community/boardwrite")
	public String boardwrite() {
		log.info("커뮤니티 게시판 글쓰기 페이지 출력");
		return "/community/boardwrite";
	}
	
	// ========================================= 커뮤니티 게시판 글 수정 및 삭제 페이지 출력
	@RequestMapping(value="community/boardsee")
	public String boardsee() {
		log.info("커뮤니티 게시판 수정 및 삭제 페이지 출력");
		return "/community/boardsee";
	}
}
