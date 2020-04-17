package cn.zt.dao;

import org.springframework.stereotype.Repository;

import cn.zt.entity.User;

@Repository
public interface UserDao {
	public User findByUsername(String username);
	
	public int countUser();
}
