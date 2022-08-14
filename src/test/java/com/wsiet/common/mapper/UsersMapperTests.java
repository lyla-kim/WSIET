package com.wsiet.common.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.wsiet.common.domain.UserVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class UsersMapperTests {

	@Setter(onMethod_ = @Autowired)
	private UsersMapper mapper;
	
	@Test
	public void testRead() {
		UserVO vo = mapper.read("test1");
		
		log.info(vo);
		
	}
}
