package poly.service.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.persistance.mapper.IProjectsMapper;
import poly.persistance.mapper.IUserMapper;
import poly.service.IUserService;

@Service("UserService")
public class UserService implements IUserService {

	@Resource(name="UserMapper")
	private IUserMapper UserMapper;
	
	private Logger log = Logger.getLogger(this.getClass());
	
}
