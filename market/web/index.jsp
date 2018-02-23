<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/19 0019
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>注册</title>
    <script type="text/javascript" src="statics/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#name").blur(function() {
                var name = this.value;
                if (name == null || name == "") {
                    $("#nameDiv").html("用户名不能为空！");
                } else {
                    $.ajax({
                        "url"       : "ajaxContronller/ajax",   //要提交的URL路径
                        "type"      : "POST",          //发送请求的方式
                        "data"      : "name="+name,    //要发送到服务器的数据
                        "success"   : callBack         //响应成功后要执行的代码
                    });
                    /*$.post("ajaxContronller", "name="+name, callBack);*/

                    //响应成功时的回调函数
                    function callBack(data) {
                        if (data == "true") {
                            $("#nameDiv").html("用户名已被使用！");
                        } else {
                            $("#nameDiv").html("用户名可以使用！");
                        }
                    }//end of callBack()
                }
            });//end of blur()
        });
    </script>
  </head>
  <body>
  <form action="" id="form1">
    <table>
      <tr>
        <td>用 户 名：</td>
        <td><input type="text" name="name" id="name" />&nbsp;<font color="#c00fff">*</font></td>
        <td>
          <div id="nameDiv" style="display: inline"></div></td>
      </tr>
    </table>
  </form>
  </body>
</html>
