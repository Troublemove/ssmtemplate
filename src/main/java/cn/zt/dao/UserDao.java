package cn.zt.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.zt.entity.User;

@Repository
public interface UserDao {
	public User findByUsername(String username);
	
	public List<User> findAllUser(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize);
}
