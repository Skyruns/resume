<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/10/20
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%--<%@include file="jlpanel.jsp"%>--%>
<%@include file="phone.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <title>我的简历</title>
</head>
<body>
<%--<form action="/Loginwebs/Nine.jsp">--%>
<%--    <input type="submit" value="跳转到九九乘法表">--%>
<%--</form>--%>
<h1 style="text-align: center;">个人简历-杨文佩</h1>
<table border="1" cellspacing="0" align="center" width="65%" heigh="100%" >
    <tr >
        <td colspan="8" style="background-color: rgb(67, 57, 157);"  align="center" >
            <b>基本信息</b>
        </td>
    </tr>
    <tr>
        <td style="color:black"><strong>姓名</strong></td>
        <td width="100">杨文佩</td>
        <td style="color:red"><strong>性别</strong></td>
        <td style="text-align: center;">女</td>
        <td><b>年龄</b></td>
        <td >20</td>
        <td rowspan="4"  >

            <img  src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202006%2F22%2F20200622110827_qtdwd.thumb.1000_0.gif&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1665913967&t=db178cb2995eac62e73303312f7887f1" width="100%" >

        </td>
    </tr>
    <tr>
        <td style="color:black"><strong>学历</strong></td>
        <td>专科</td>
        <td style="color:red"><strong>出生年月</strong></td>
        <td>2002.03</td>
        <td><b>民族</b></td>
        <td>汉</td>

    </tr>
    <tr>
        <td style="color:black"><strong>专业</strong></td>
        <td >计算机信息管理</td>
        <td style="color:red"><strong>毕业院校</strong></td>
        <td>西南科技大学</td>
        <td><b>邮编</b></td>
        <td>641000</td>

    </tr>
    <tr>
        <td style="color:black"><strong>邮箱</strong></td>
        <td>359043182@qq.com</td>
        <td style="color:red"><strong>籍贯</strong></td>
        <td>四川内江</td>
        <td><b>政治面貌</b></td>
        <td>共青团员</td>

    </tr>
    <tr>
        <td style="color:black"><strong>教育背景</strong></td>
        <td colspan="6">
            <p>2019.09-2022.06 西南科技大学 专科</p>
            <p>GPA:3.66(专业前10%)</p>
            <p>主修课程</p>
            <div style="text-indent:2em;">web交互设计开发、计算机组成原理、手机应用软件开发、高级语言程序设计JAVA、操作系统、网站设计与编程实用、软件测试技术</div>
        </td>
    </tr>
    <td style="color:black"><strong>校园经历</strong></td>
    <td colspan="8">
        <div style="text-indent:2em;">在校期间积极参与各项社会活动，具有良好的应变能力和心理素质，学习态度端正，严格遵守纪律。为人诚恳、待人友好，有进取心、上进心。</div>
        <ul>
            <li>2020.12  文化竞赛---“119消防海报设计大赛”--二等奖</li>
            <li>2020.12  文化竞赛---“学生管理制度知识竞赛”--二等奖</li>
            <li>2021.6-2021.9 社会实践---“百年征程-重走红色路”</li>
            <li>2021.5-2021.6 志愿活动---图书馆志愿活动、迎新志愿活动</li>
        </ul>
    </td>
    </tr>
    <tr>
        <td style="color:black"><strong>技能证书</strong> </td>
        <td colspan="8" width="500">
            <ul>
                <li>普通话二级乙等</li>
                <li>大学英语四级，良好的听说读写能力</li>
                <li>通过全国计算机二级考试,熟练运用office相关软件。</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td style="color:black"><strong>自我评价</strong> </td>
        <td colspan="8" wigth="200%">
            <div style="text-indent:2em;">有很强的忍耐力、意志力和吃苦耐劳的品质。敢于挑战未知领域，乐于在自身及周围世界寻求突破。个性乐观执着，敢于面对困难与挑战。富有团队合作精神</div>
        </td>
    </tr>
</table>
<div id="dongtai" align="center">
    <script>
        setInterval("document.getElementById('dongtai').innerHTML=new Date().toLocaleString();", 1000);
    </script>
</div>
</body>
</html>
