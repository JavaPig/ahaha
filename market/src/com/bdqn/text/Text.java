package com.bdqn.text;

import com.aliyuncs.exceptions.ClientException;
import com.bdqn.entity.User;
import com.bdqn.service.UserService;
import com.bdqn.service.impl.UserServiceImpl;
import com.bdqn.utils.SendCode;

import java.util.List;

public class Text {
    public static void main(String[] args) {

        UserService u=new UserServiceImpl();
     List<User> lists= u.findAll();
     System.out.println(lists.size());
       /* SendCode sendCode=new SendCode();
        try {
            sendCode.sendSms("18820104077","123456");
        } catch (ClientException e) {
            e.printStackTrace();
        }*/
    }
}
