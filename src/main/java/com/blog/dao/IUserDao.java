package com.blog.dao;

import com.blog.model.User;

public interface IUserDao {

    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);
    
    User selectByEmailAndPassword(String email, String password);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
}