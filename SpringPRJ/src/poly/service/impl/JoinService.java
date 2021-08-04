package poly.service.impl;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.persistance.mapper.IJoinMapper;
import poly.service.IJoinService;

@Service("JoinService")
public class JoinService implements IJoinService {

	@Resource(name = "JoinMapper")
	private IJoinMapper JoinMapper;
	
	private Logger log = Logger.getLogger(getClass());
}
