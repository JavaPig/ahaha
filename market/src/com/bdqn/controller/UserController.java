package com.bdqn.controller;

import com.aliyuncs.exceptions.ClientException;
import com.bdqn.entity.User;
import com.bdqn.service.UserService;
import com.bdqn.utils.BaiDuMapper;
import com.bdqn.utils.IpSearch;
import com.bdqn.utils.SendCode;
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
    @Resource
    private SendCode sendCode;

    String phoneCode=null;

    @RequestMapping("goLogin")
    public String getLogin(Model model){
        return "login";
    }
    //登录
    @RequestMapping("doLogin")
    public String doLogin(User user,Model model,HttpServletRequest request){
        String uname=user.getUname();
        String upwd=user.getUpwd();
        if (user==null&&user.equals("")){
            model.addAttribute("error","登录失败,请重新登录");
            return "login";
        }else {
            User user1=userService.getUser(uname,upwd);
            if (null!=user1) {
                request.getSession().setAttribute("user1",user1);

                return "redirect('/index.jsp');";
            }else {
                model.addAttribute("error", "登录失败,请重新登录!");
                return "login";
            }
        }
    }
    //注册
    @RequestMapping("goRegister")
    public String getRegister(Model model){
        return "register";
    }

    /**
     *
     * @param user
     * @param request
     * @param model
     * @return
     * 去注册
     */
    @RequestMapping("doRegister")
    public String doRegister(User user,HttpServletRequest request,Model model) {
        //获取数据库所有用户
        List<User> lists = userService.findAll();
        //注册用户名
        String uname = user.getUname();
        //注册密码
        String upwd = user.getUpwd();
        //确认密码
       String pwdRepeat = request.getParameter("pwdRepeat");
        //获取手机号码
        String uphone = request.getParameter("uphone");
        //获取用户输入的验证码
        String mobileCode = request.getParameter("mobileCode");
        //遍历判断新注册用户名是否存在
        for (int i = 0; i <lists.size(); i++) {
            if (lists.get(i).getUname().equals(uname)) {
                return "register";
            }
        }
        //判断两次输入的密码是否一致
      if (!upwd.equals(pwdRepeat)) {
            return "register";
        } else {
            //判断验证码
            if (!phoneCode.equals(mobileCode)) {
                return "register";
            }else{
                User newUser=new User();
                newUser.setUname(uname);
                newUser.setUpwd(upwd);
                //新注册会员加进数据库
                userService.addUser(newUser);

                return  "doLogin";
            }

        }

    }

    /**
     *
     * @param request
     * 发送手机短信验证码
     */
    @RequestMapping("sendCode")
    public void sendCode(HttpServletRequest request){
        String uphone=request.getParameter("uphone");
        //随机生成4位数的验证码
       int str=(int)((Math.random()*9+1)*1000);
            phoneCode=str+"";
            System.out.println(phoneCode);
        try {
            //给用户手机发送验证码
            sendCode.sendSms(uphone,phoneCode);
        } catch (ClientException e) {
            e.printStackTrace();
        }


    }







    //地图
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
    @RequestMapping("register")
    public String doRegister(){
        return "register";
    }
}
