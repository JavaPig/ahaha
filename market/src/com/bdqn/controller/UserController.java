package com.bdqn.controller;

import com.bdqn.entity.User;
import com.bdqn.service.UserService;
import com.bdqn.utils.BaiDuMapper;
import com.bdqn.utils.IpSearch;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@RequestMapping("userController")
public class UserController {
    @Resource
    private UserService userService;
    @Resource
    private BaiDuMapper baiDuMapper;
    @Resource
    private IpSearch ipSearch;

    @RequestMapping("getLogin")
    public String getLogin(Model model){
        List<User> list=userService.findAll();
        model.addAttribute("list",list);
        return "login";
    }

    @RequestMapping("getMap")
    public String getMap(Model model, HttpServletRequest request){
        String ipSearchs= ipSearch.getIpAddr(request);
        String ip = ipSearchs;
        String address = "";
        try {
            address = baiDuMapper.getAddresses("ip="+ip, "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        System.out.println(address);
        request.getSession().setAttribute("address",address);
        model.addAttribute("address",address);
        model.addAttribute("ipSearchs",ipSearchs);
        return "BaiDuMap";
    }

}
