package cn.ssm.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.zt.dao.UserDao;
import cn.zt.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class TestUser {
	
	@Autowired
	private UserDao userDao;
	
	@Test
	public void testFindByName() {
		User u = userDao.findByUsername("admin");
		System.out.println(u);
	}
	
}
