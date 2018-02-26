package com.bdqn.controller;


import com.bdqn.dao.UserMapper;
import com.bdqn.service.impl.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@Controller
@RequestMapping("ajaxContronller")
public class AjaxContronller extends HttpServlet{
    @Resource
    private UserServiceImpl UserServiceImpl;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String uphone = req.getParameter("uphone");
        System.out.println("22222222222222222222222222222");
        System.out.println(uphone);
        boolean used = false;
        if("ajax".equals(uphone)){
            used = true;
        }else{
            used = false;
        }
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.print(used);
        out.flush();
        out.close();
    }
    @RequestMapping("/ajax")
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        this.doGet(req, resp);
    }
}
