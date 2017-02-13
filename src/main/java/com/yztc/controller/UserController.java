package com.yztc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yztc.po.User;
import com.yztc.service.UserService;

@Controller
public class UserController {
	@Autowired
	public UserService userService;
	
	@RequestMapping("/findById")
	public @ResponseBody User findById(int id){
		User users = userService.findById(id);
		return users;
	}
}
