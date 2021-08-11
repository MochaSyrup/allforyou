package poly.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.ProjectsDTO;
import poly.persistance.mapper.ICommunityMapper;
import poly.service.ICommunityService;


@Service("CommunityService")
public class CommunityService implements ICommunityService {

	@Resource(name = "CommunityMapper")
	private ICommunityMapper CommunityMapper;
	
	private Logger log = Logger.getLogger(getClass());

	@Override
	public int insertCommunity(ProjectsDTO uDTO) throws Exception {
		int res = 0;
		
		if(uDTO ==null) {
			log.info("게시글 입력 실패");
			ProjectsDTO zDTO = new ProjectsDTO();
			log.info("DTO에 값이 없어 메모리에 강제로 올렸습니다.");
			
		} else {
			log.info("게시글 입력 로직 작동");
			CommunityMapper.insertCommunity(uDTO);
			res = 1;
			log.info("게시글 입력 완료");
			
			
		}
		return res;
	}
	
	@Override
	public List<ProjectsDTO> getBoardList() throws Exception {
		List<ProjectsDTO> rlist = new ArrayList<>();
		
		rlist=CommunityMapper.getBoardList();
		if(rlist==null) {
			List<ProjectsDTO> list = new ArrayList<>();
			log.info("rlist==null");
		}
		else {
			log.info("success");
		}
		
		return rlist;
	}
}
