package poly.service.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.persistance.mapper.ILoginMapper;
import poly.service.ILoginService;

@Service("LoginService")
public class LoginService implements ILoginService {
	
	@Resource(name="LoginMapper")
	private ILoginMapper LoginMapper;

	private Logger log = Logger.getLogger(getClass());
	
}
