<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/10/27
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="../error.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .phoneinfo{
        width: 300px;
        margin: 0 auto;
    }
</style>
<body>
<%--<a href="jlpanel.jsp" id="back">返回</a>--%>
<jsp:useBean id="phone" class="com.dingli.javaweb05.javabean.PhoneBean">
    <jsp:setProperty name="phone" property="*"></jsp:setProperty>
</jsp:useBean>
<div class="phoneinfo">
    名称：<span id="name"><jsp:getProperty name="phone" property="name"/></span><br>
    名称：<span id="name">${phone.name}</span><br>
    屏幕：<jsp:getProperty name="phone" property="pinmu"/><br>
    屏幕：${phone.pinmu}<br>
    芯片：<jsp:getProperty name="phone" property="core"/><br>
    芯片：${phone.core}<br>
    摄像头<jsp:getProperty name="phone" property="sxt"/><br>
    摄像头${phone.sxt}<br>
    电池：<jsp:getProperty name="phone" property="dianchi"/><br>
    电池：${phone.dianchi}<br>
    价格：<jsp:getProperty name="phone" property="price"/><br>
    价格：${phone.price}<br>
</div>
<%--<button onclick="getP()">click</button>--%>
<script>
        var phone = document.getElementsByClassName("phoneinfo");
        var pname = document.getElementById("name");
        if (pname.innerText=='null'){
            phone[0].style['display'] = 'none'
        }
        var back = document.getElementById("back")
        // back.style['display'] = 'none'
</script>
</body>
</html>
