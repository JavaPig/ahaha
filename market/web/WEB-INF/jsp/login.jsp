<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/6
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>京东登录页</title>
    <link rel="stylesheet" href="../../statics/css/styles.css"/>
</head>
<body>
<script type="text/javascript">

</script>
<div class="wrap">
    <div class="logo-box">
        <img src="../../statics/images/logo.png" class="left"/>
        <span class="logo-r left">欢迎登陆</span>
    </div>
</div>
<div class="content">
    <div class="wrap">
        <div style="height:475px;background:url(../../statics/images/banner.png) no-repeat left top">
            <div class="login-form">
                <h2>京东会员 <a href="">立即注册</a></h2>
                <span class="firstSpan">${error}</span>
                <form action="doLogin" id="submit1" method="post" >
                    <div class="item">
                        <label for="name" class="left"
                               style="background:url(../../statics/images/login-icons.png) no-repeat;"></label>
                        <input type="text" id="name" name="uname" placeholder="邮箱/用户名/已验证手机" required>
                    </div>
                    <div class="item">
                        <label for="pwd" class="left"
                               style="background:url(../../statics/images/login-icons.png) no-repeat;background-position:-48px 0; "></label>
                        <input type="password" id="pwd" name="upwd" placeholder="请输入密码" required/>
                    </div>
                    <div class="item2">
                        <input type="checkbox" name="auto" id="auto"/>
                        <label for="auto">自动登录</label>
                        <a href="">忘记密码</a>
                    </div>
                    <a  href="javascript:document:submit1.submit();" class="login-btn"  >登录</a>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="wrap footer">
    <div class="link"><a href="">关于我们</a>|<a href="">联系我们</a>|<a href="">人才招聘</a>|<a href="">商家入驻</a>|<a
            href="">广告服务</a>|<a href="">手机京东</a>|<a href="">友情链接</a>|<a href="">销售联盟</a>|<a href="">京东社区</a>|<a href="">京东公益</a>|<a
            href="">English Site</a></div>
    <div class="copy">Copyright©2004-2015 京东JD.com 版权所有</div>
</div>
</body>
</html>