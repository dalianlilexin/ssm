package com.yztc.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yztc.mapper.UserMapper;
import com.yztc.po.User;
import com.yztc.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	public UserMapper userMapper;
	
	@Override
	public User findById(int id) {
		return userMapper.selectByPrimaryKey(id);
	}
}
