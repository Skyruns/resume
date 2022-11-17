<%--
  Created by IntelliJ IDEA.
  User: 刘嫣然
  Date: 2022/10/19
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@include file="jlpanel.jsp"%>--%>
<%@include file="phone.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>简历</title>
</head>
<body>
<h1 align="center">我的个人简历</h1>
<table border="1" bgcolor="#f1f1f1" cellspacing="0" width="800px" height="160px" align="center" >
    <tr align="center" >
        <td style="color:black" width="100px"><strong>姓名</strong></td>
        <td width="100px">刘嫣然</td>
        <td style="color:red" width="100px"><strong>性别</strong></td>
        <td width="100px">女</td>
        <td style="color:black" width="100px"><strong>年龄</strong></td>
        <td width="100px">21</td>
        <td rowspan="3" width="200px">
            <img src=https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fkr.shanghai-jiuxin.com%2Ffile%2F2021%2F0521%2F9177992b6989dacbaa29642897d0b8e3.jpg&refer=http%3A%2F%2Fkr.shanghai-jiuxin.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1667634701&t=c528b51d5d2d6bc2ae39c59318e4a5be height="180px" width="200px" align="center">
        </td>

    </tr>
    <tr align="center">
        <td style="color:black"><strong>籍贯</strong></td>
        <td>四川资中</td>
        <td style="color:red"><strong>电话</strong></td>
        <td>1xxxx</td>
        <td style="color:black"><strong>邮箱</strong></td>
        <td>lu@163.com</td>


    </tr>
    <tr align="center">
        <td style="color:black"><strong>学历</strong></td>
        <td>本科</td>
        <td style="color:red"><strong>身份证</strong></td>
        <td>5xxxx</td>
        <td style="color:black"><strong>学校</strong></td>
        <td>绵城</td>

    </tr>
    <tr align="center">
        <td style="color:black"><strong>教育背景</strong></td>
        <td colspan="8" align="left" style="padding: 10px;margin:10px">
            <p>就读日期:2019.06-2022.09</p>
            <p >就读学校：绵阳城市学院</p>
            <p>就读专业：计算机科学与技术</p>
        </td>

    </tr>
    <tr align="center">
        <td style="color:black"><strong>在校经历</strong></td>
        <td colspan="8" align="left" style="padding: 20px;margin:20px">
            <h5><u>经历一</u></h5>
            <p>工作部门：信息系技术部;&nbsp;&nbsp;&nbsp;&nbsp;  工作内容：校园公众号前端交互设计</p>
            <p>工作描述：</p>
            <!-- <li></li> -->
            <p>&nbsp;&nbsp;1.负责静态页面制作;</p>
            <p>&nbsp;&nbsp;2.检查并管理公众号发布内容；</p>
            <p>&nbsp;&nbsp;3.做简易的页面交互设计；</p>
            <p>&nbsp;&nbsp;4.对公众号进行优化。</p>
            <hr>
            <h5><u>经历二</u></h5>
            <p>工作部门：班级网站;&nbsp;&nbsp;&nbsp;&nbsp;    工作内容：界面设计</p>

            <p>工作描述：</p>
            <p>&nbsp;&nbsp;1.根据班级同学特征，填写个人界面；</p>
            <p>&nbsp;&nbsp;2.Html框架实现页面;</p>
            <p>&nbsp;&nbsp;3.利用css+javascript等框架完成页面和用户交互功能的实现;</p>
            <p>&nbsp;&nbsp;4.优化项目代码，提高代码兼容性。</p></td>
    </tr>
    <tr>
    <tr align="center">
        <td style="color:black"><strong>个人证书</strong></td>
        <td colspan="8" align="left" style="padding: 20px;margin:20px">
            <li>于2019年考取英语四级证书。</li>
            <li>于2020年考取SYB职业技能证书。</li>
            <li>于2020年考取国家普通话二乙证书。</li>
        </td>
    </tr>
    <tr align="center">
        <td style="color:black"><strong>项目经历</strong></td>
        <td colspan="8" align="left" style="padding: 20px;margin:20px">
            <p>项目介绍：茶业官网介绍及种类。</p>
            <p>定位：前端设计</p>
            <p>我的职责：</p>
            <p>&nbsp;&nbsp;1.负责基于HTML、CSS、Javascript的Web应用前端开发;</p>
            <p>&nbsp;&nbsp;2.与UI设计师积极合作,完成前端的页面实现;</p>
            <p>&nbsp;&nbsp;3.与后端开发工程师积极合作，完成前端与后端的数据交互。</p>
            <p>&nbsp;&nbsp;4.对公众号进行优化。</p>
        </td>
    </tr>
</table>
<%--<script>--%>
<%--    setInterval("document.getElementById('datetime').innerHTML=new Date().toLocaleString();", 1000);--%>
<%--</script>--%>
<div id="datetime" align="center"></div>


</body>
</html>
