package com.bdqn.service.impl;

import com.bdqn.dao.UserMapper;
import com.bdqn.entity.User;
import com.bdqn.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }

    @Override
    public User getUser(String name, String upwd) {
        return userMapper.getUser(name,upwd);
    }


}
