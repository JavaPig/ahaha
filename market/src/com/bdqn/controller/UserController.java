package com.bdqn.controller;

import com.bdqn.entity.User;
import com.bdqn.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("userController")
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("getLogin")
    public String getLogin(Model model){
        List<User> list=userService.findAll();
        model.addAttribute("list",list);
        return "login";
    }
}
