package cn.zt.service;

import java.util.List;

import cn.zt.entity.User;

public interface UserService {
	
	/**
	 * 根据名称查找用户
	 * @param username
	 * @return
	 */
	User findByUsername(String username);
	
	/**
	 * 查找所有用户信息
	 * @param username
	 * @return
	 */
	List<User> findAllUser();
}
