package com.yztc.mapper;

import java.util.List;

import com.yztc.po.User;

public interface UserMapper {
	List<User> findById(int id);
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

}