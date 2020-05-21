package cn.zt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.zt.dao.UserDao;
import cn.zt.entity.User;
import cn.zt.service.UserService;

@Service("UserService")
public class UserServiceImpl implements UserService{
	
	@Resource(name="userDao")
	private UserDao dao;

	@Override
	public User findByUsername(String username) {
		return dao.findByUsername(username);
	}

	@Override
	public PageInfo<User> findAllUser(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<User> users = dao.findAllUser(pageNum, pageSize);
		PageInfo<User> pageInfo = new PageInfo<User>(users);
		return pageInfo;
	}
}
