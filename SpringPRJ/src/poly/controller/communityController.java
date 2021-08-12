package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.dto.ProjectsDTO;
import poly.service.ICommunityService;

@Controller
public class communityController {
	
	private Logger log = Logger.getLogger(getClass());
	
	@Resource(name = "CommunityService")
	private ICommunityService CommunityService;

	// =========================================== 커뮤니티 게시판 리스트 페이지 출력
	@RequestMapping(value = "community/boardlist")
	public String boardlist(HttpServletRequest request, ModelMap model) throws Exception {
		log.info(this.getClass().getName()+"커뮤니티 게시판 페이지 출력");
		
		List<ProjectsDTO> rList = new ArrayList<>();
		try {
			rList=CommunityService.getBoardList();
			for(ProjectsDTO p : rList) {
				log.info("글번호 : "+p.getBoard_seq());
			}
		} catch(Exception e) {
			log.info(e.getStackTrace());
		}finally {
			model.addAttribute("rList", rList);
		}
		
		
		return "/community/boardlist";
	}
	
	// =========================================== 커뮤니티 게시판 글쓰기 페이지 출력
	@RequestMapping(value="community/boardwrite")
	public String boardwrite() {
		log.info("커뮤니티 게시판 글쓰기 페이지 출력");
		
		return "/community/boardwrite";
	}
	
	// ========================================= 커뮤니티 게시판 게시글작성 로직
	@RequestMapping(value = "community/boardwrite/logic")
	@ResponseBody
	public String insertCommunity(HttpServletRequest request) throws Exception {
		log.info("게시글작성 로직 실행");

		String title = request.getParameter("BOARD_TITLE");
		String writer = request.getParameter("BOARD_WRITER");
		String contents = request.getParameter("BOARD_CONTENTS");
		
		log.info(title);
		log.info(writer);
		log.info(contents);

		ProjectsDTO aDTO = new ProjectsDTO();

		aDTO.setBoard_title(title);
		aDTO.setBoard_writer(writer);
		aDTO.setBoard_contents(contents);
	

		int res = CommunityService.insertCommunity(aDTO);

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
	
	// ========================================= 커뮤니티 게시판 글 수정 및 삭제 페이지 출력
	@RequestMapping(value="community/boardsee")
	public String boardsee() {
		log.info("커뮤니티 게시판 수정 및 삭제 페이지 출력");
		return "/community/boardsee";
	}
}
