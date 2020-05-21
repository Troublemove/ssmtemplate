package cn.zt.service;

import com.github.pagehelper.PageInfo;

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
	 * @param pageNum  第几页
	 * @param pageSize 一页显示数
	 * @param username
	 * @return
	 */
	PageInfo<User> findAllUser(int pageNum, int pageSize);
}
