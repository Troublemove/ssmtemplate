package cn.zt.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.zt.dao.UserDao;
import cn.zt.entity.User;
import cn.zt.service.UserService;

@Service("UserService")
public class UserServiceImpl implements UserService{
	
	@Resource(name="userDao")
	private UserDao dao;

	@Override
	public User findByUsername(String username) {
		return dao.findByUsername("admin");
	}

	@Override
	public int countUser() {
		return dao.countUser();
	}
}
