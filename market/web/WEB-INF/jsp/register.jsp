<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018年2月24日,0024
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人注册</title>
    <link rel="stylesheet" href="../../statics/css/register_css.css" type="text/css">
    <script type="text/javascript" src="../../statics/js/jquery-1.8.3.min.js"></script>

<%--<script type="text/javascript">

    $(document).ready(function () {
        $("#abc").click(function () {
            alert(16516516516);
        })
    })
</script>--%>



    <script type="text/javascript">
        $(document).ready(function() {
            $("#getPhoneCode").click(function() {
                var uphone = $("#form-phone").val();
                alert(uphone);
                if (uphone == null || uphone == "") {
                    /*$("#phoneCss").focus(function () {
                        $("#phoneCss").css("background-color","blue");
                    })*/
                } else {
                    $.ajax({
                        "url": "sendCode",//要提交的路径
                        "Type": "post",//提交方式
                        "data": "uphone=" + uphone,//发送到服务器的数据
                        "dataType": "text",//指定返回的数据格式
                        "success": function (data) {
                        },//响应成功后要执行代码
                        /* "error"		: function() { //请求失败后要执行代码
                             $("#codeMiss").html("短信验证码错误！");
                         }*/
                    });
                    //响应成功时的回调函数
                    /*function callBack(data) {
                        if (data == "true") {
                            $("#nameDiv").html("用户名已被使用！");
                        } else {
                            $("#nameDiv").html("用户名可以使用！");
                        }
                    }//end of callBack()*/
                }
            });//end of blur()
        });
    </script>





    <%--<script type="text/javascript">
        var obj = document.getElementById("getPhoneCode");
        var flag = 10;
        //注册点击事件
        obj.onclick=function(){
            if(flag<10){
                return;
            }
            //ajax引擎（浏览器内部的小型浏览器）
            var xhr = new XMLHttpRequest();
            //相当于你打开浏览器输入需要访问的地址
            xhr.open("get","getPhoneCode.do?form-phone="+document.getElementById("form-phone").value,true);
            //监控请求状态 判断是否请求完成，回调函数，事件监听函数
            xhr.onreadystatechange=function(){
                if(xhr.readyState==4&&xhr.status==200){
                    //alert(xhr.responseText);
                }
            }
            xhr.send(null);
            timer();
        }
        function validate(){
            //ajax引擎（浏览器内部的小型浏览器）
            var xhr = new XMLHttpRequest();
            //相当于你打开浏览器输入需要访问的地址
            xhr.open("get","ValidateCode?code="+document.getElementById("code").value,true);
            //监控请求状态 判断是否请求完成，回调函数，事件监听函数
            xhr.onreadystatechange=function(){
            xhr.send(null);
            if(xhr.readyState==4&&xhr.status==200){
                alert(xhr.responseText);
            }
        }
        }
        function timer(){
            flag--;
            obj.innerHTML=flag+"秒以后重新获取！";
            if(flag==0){
                obj.innerHTML="获取验证码";
                flag =10;
            }else{

                setTimeout("timer()",1000);
            }
        }
    </script>
--%>





</head>
<body>
<div id="form-header" class="header">
    <div class="logo-con w clearfix">
        <!--<a href="//www.jd.com" class="logo"> </a>-->
        <div class="img"><img src="../../statics/images/logo.png" alt="京东"></div>
        <div class="logo-title">欢迎注册</div>
        <div class="have-account">已有账号？ <a href="userController/getLogin">请登录</a></div>
    </div>
</div>
<div class="reg-form fl">
    <form action="doRegister" id="register-form" method="post" novalidate="novalidate">
        <input type="hidden" name="new" value="new_person_reg">
        <input type="hidden" id="localmisc" name="localmisc" value="">
        <input type="hidden" name="regType" id="regType" value="person">
        <input type="hidden" name="uuid" id="uuid" value="e50205e4-b588-4adf-95dc-a450ac2dcc02">
        <input type="hidden" name="verifymc" id="verifymc" value="">
        <input type="hidden" name="emailMg" id="emailMg">
        <input type="hidden" name="authcodeMg" id="authcodeMg">
        <input type="hidden" name="state" id="state" value="">
        <input type="hidden" name="tgId" id="tgId" value="">
        <input type="hidden" name="eid" id="eid"
               value="FOK5CSDVCTXJMPFBTSDLFVIQASKGHT6WQIIQY2AHIXPJFNVZMZOFVF5NLMUYDECOO2QLHCRL5XSAV4BLAN7OBYI5DM">
        <input type="hidden" name="fp" id="sessionId" value="5516108e59c0786f8cd66e272a1b473e">
        <input type="hidden" id="jcloud" name="jcloud" value="">
        <input type="hidden" id="ucJcloud" name="ucJcloud" value="">
        <input type="hidden" id="jdcom" name="jdcom" value="jdcom1519365735370">
        <input type="hidden" id="source" name="source" value="">
        <input type="hidden" value="-1" id="hnschool" class="hide">
        <input type="hidden" name="qPRltMYxTW" value="gExnb">
        <input type="hidden" id="schoolid" name="schoolid" class="hide">
        <!--chrome autocomplete off bug hack-->
        <input style="display:none" name="hack">
        <input type="password" style="display:none" name="hack1">

        <div class="form-item form-item-account" id="form-item-account">
            <label>用　户　名</label>
            <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;"></txt>
            <input type="text" id="form-account" name="uname" class="field" autocomplete="off" maxlength="20"
                   placeholder="您的账户名和登录名" default="<i class=&quot;i-def&quot;></i>支持中文、字母、数字、“-”“_”的组合，4-20个字符">
            <i class="i-status"></i>
        </div>
        <div class="input-tip">
            <span></span>
        </div>
        <div class="form-item" style="z-index: 12;">
            <label>设 置 密 码</label>
            <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;"></txt>
            <input type="password" name="upwd" id="form-pwd" class="field" maxlength="20" placeholder="建议至少使用两种字符组合"
                   default="<i class=i-def></i>建议使用字母、数字和符号两种及以上的组合，6-20个字符">
            <i class="i-status"></i>
            <div class="capslock-tip tips" style="display: none;">大写已开启<b class="arrow"></b><b class="arrow-inner"></b>
            </div>
            <div class="capslock-tip tips" style="display: none;">大写已开启<b class="arrow"></b><b class="arrow-inner"></b>
            </div>
        </div>
        <div class="input-tip">
            <span></span>
        </div>
        <div class="form-item" style="z-index: 12;">
            <label>确 认 密 码</label>
            <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;"></txt>
            <input type="password" name="pwdRepeat" id="form-equalTopwd" class="field" placeholder=" 请再次输入密码"
                   maxlength="20" default="<i class=&quot;i-def&quot;></i>请再次输入密码">
            <i class="i-status"></i>
            <div class="capslock-tip tips" style="display: none;">大写已开启<b class="arrow"></b><b class="arrow-inner"></b>
            </div>
            <div class="capslock-tip tips" style="display: none;">大写已开启<b class="arrow"></b><b class="arrow-inner"></b>
            </div>
        </div>
        <div class="input-tip">
            <span></span>
        </div>
        <div class="item-phone-wrap">
            <div class="form-item form-item-phone">
                <label class="select-country" id="select-country" country_id="0086">中国 0086<a href="javascript:void(0)"
                                                                                              tabindex="-1"
                                                                                              class="arrow"></a></label>
                <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 7px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;"></txt>
                <input type="text" id="form-phone" name="uphone" class="field" placeholder="建议使用常用手机" autocomplete="off"
                       maxlength="11" default="<i class=&quot;i-def&quot;></i>完成验证后，你可以用该手机登录和找回密码">
                <i class="i-status"></i>
            </div>
            <div class="input-tip">
                <span></span>
            </div>
        </div>
        <input id="authcode" name="authcode" type="hidden">
        <input id="slideAppId" name="slideAppId" value="1604ebb2287" type="hidden">
        <input id="slideScene" value="reg" type="hidden">
        <input id="slideProduct" value="embed" type="hidden">
        <input id="slideWidth" value="100%" type="hidden">
        <input id="slidePlaceHolder" value="" type="hidden">
        <input id="slideSuccessMsg" value="" type="hidden">
        <div id="slideAuthCode" class="JDValidate-wrap">
        </div>
        <div class="form-item form-item-phonecode">
            <label>手机验证码</label>
            <txt style="position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;; color: rgb(204, 204, 204); display: inline;"></txt>
            <input type="text" name="mobileCode" maxlength="6" id="phoneCode" class="field phonecode"
                   placeholder="请输入手机验证码" autocomplete="off">
           <button id="getPhoneCode" class="btn-phonecode" type="button">获取验证码</button>



            <i class="i-status"></i>
        </div>
        <div class="input-tip">
            <span></span>
        </div>
        <div>
            <button type="submit" class="btn-register" id="abc">立即注册</button>
        </div>
    </form>
    <div id="form-footer" class="footer w" align="center">
        <div class="links">
            <a rel="nofollow" target="_blank" href="//www.jd.com/intro/about.aspx"> 关于我们</a>|
            <a rel="nofollow" target="_blank" href="//www.jd.com/contact/">联系我们</a>|
            <a rel="nofollow" target="_blank" href="//zhaopin.jd.com/">人才招聘</a>|
            <a rel="nofollow" target="_blank" href="//www.jd.com/contact/joinin.aspx">商家入驻</a>|
            <a rel="no  follow" target="_blank" href="//www.jd.com/intro/service.aspx">广告服务</a>|
            <a rel="nofollow" target="_blank" href="//app.jd.com/">手机京东</a>|
            <a target="_blank" href="//club.jd.com/links.aspx">友情链接</a>|
            <a target="_blank" href="//media.jd.com">销售联盟</a>|
            <a href="//club.jd.com/" target="_blank">京东社区</a>|
            <a href="//gongyi.jd.com" target="_blank">京东公益</a>|
            <a target="_blank" href="//en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
        </div>
        <div class="copyright">
            Copyright©2004-2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有
        </div>
    </div>
</div>

</body>
</html>
