package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.ProjectsDTO;

@Mapper("CommunityMapper")
public interface ICommunityMapper {

	
	void insertCommunity(ProjectsDTO uDTO) throws Exception;
	List<ProjectsDTO> getBoardList() throws Exception; 

}
