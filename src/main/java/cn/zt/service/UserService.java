package cn.zt.service;

import cn.zt.entity.User;

public interface UserService {
	User findByUsername(String username);
	
	int countUser();
}
