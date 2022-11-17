<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/10/26
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>下岗工人再就业</title>
</head>
<style>
    #show{
        width: 100%;
        height: 100%;
    }
</style>
<body>
<%@include file="../hello.jsp"%>
    <div>
        登录成功，用户名是${username}
    </div>
    <div>
        <button class="HY" onclick=ch("huyi.jsp") >组长：胡艺</button>
        <button href="lenglang.jsp" onclick=ch("lenglang.jsp")>组员：冷浪</button>
        <button class="HQ" onclick=ch("huqiao.jsp")>组员：胡巧</button>
        <button class="LMR"  onclick=ch("liuminru.jsp")>组员：刘名汝</button>
        <button class="LYR"  onclick=ch("liuyanran.jsp")>组员：刘嫣然</button>
        <button class="YWP"  onclick=ch("yangwenpei.jsp")>组员：杨文佩</button>
        <button class="ZD"  onclick=ch("zhaodan.jsp")>组员：赵丹</button>
        <button class="ZYC" onclick=ch("zhangyaocan.jsp")>组员：张耀灿</button>
    </div>
<select name="" id="select">
    <option value="lenglang.jsp">冷浪</option>
    <option value="huyi.jsp">组长：胡艺</option>
    <option value="huqiao.jsp">胡巧</option>
    <option value="liuminru.jsp">刘名汝</option>
    <option value="liuyanran.jsp">刘嫣然</option>
    <option value="yangwenpei.jsp">杨文佩</option>
    <option value="zhaodan.jsp">赵丹</option>
    <option value="zhangyaocan.jsp">张耀灿</option>
</select>
    <form id="form" action="phone.jsp">

        <input type="text" name="name" placeholder="手机名称"><br>
        <input type="text" name="dianchi" placeholder="电池"><br>
        <input type="text" name="pinmu" placeholder="屏幕"><br>
        <input type="text" name="sxt" placeholder="摄像头"><br>
        <input type="text" name="core" placeholder="芯片"><br>
        <input type="text" name="price" placeholder="价格"><br>
        <input type="submit" onclick="sb()" value="发手机">
    </form><br>


<%--    <button onclick="ch()">click</button>--%>
    <iframe id="show" src="" frameborder="0"></iframe>
</body>
<script>
    function ch(url){
        // alert(123)
        var show = document.getElementById("show");
        show.src = url
    }
    function sb(){
        var form = document.getElementById("form");
        var select = document.getElementById("select")
        form.action = select.value
        // alert(select.value)
        form.submit();
    }
</script>
</html>
