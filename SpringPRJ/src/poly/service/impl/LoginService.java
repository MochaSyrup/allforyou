package poly.service.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.ProjectsDTO;
import poly.persistance.mapper.ILoginMapper;
import poly.service.ILoginService;

@Service("LoginService")
public class LoginService implements ILoginService {
	
	@Resource(name="LoginMapper")
	private ILoginMapper LoginMapper;

	private Logger log = Logger.getLogger(getClass());
	
	
	@Override
	public int Loginpage(ProjectsDTO mDTO) throws Exception {
		int res = 0;
		log.info("아이디 :" + mDTO.getUser_id());
		log.info("비밀번호 :" + mDTO.getUser_pwd());
		ProjectsDTO uDTO = new ProjectsDTO();
		uDTO = LoginMapper.checkLogin(mDTO);
		if(uDTO ==null) {
			log.info("로그인시작");
			res = 1;
			log.info("없는 아이디 입니다");
		} else {
			log.info("로그인완료");
		}
		return res;
	}
}
