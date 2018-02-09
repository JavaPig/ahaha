package com.bdqn.service;

import com.bdqn.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    //全查
    List<User> findAll();
    //查用户
    User getUser(@Param("uname")String name, @Param("upwd")String upwd);

}

