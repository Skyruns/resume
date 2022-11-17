<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="phone.jsp"%>
<%--<%@include file="jlpanel.jsp"%>--%>

<html>
	<head>
		<meta charset="utf-8">
		<title>个人简历</title>
	</head>
	<body>
		<h1 align="center">
			个人简历
		</h1>
<%--		<button onclick="window.location.href ='test3.jsp'">点击跳转</button>--%>
		<table border="1px" cellspacing="0" width="65%" heigh="100%" align="center">
		  <tr>
			<td colspan="8" align="center" style="background-color: cornflowerblue;">
			 
				<b>基本信息</b></td>
		  </tr>
		  <tr>
		    <td><b>姓名</b></td>
			<br>
		    <td style="color: #FF0000;">赵丹</td>
			<td><b>学校</b></td>
			<td>西南科技大学</td>
			<td><b>专业</b></td>
			<td>计算机科学与技术</td>
			<td rowspan="3">
				<img src="https://p7.itc.cn/images01/20211201/7b536badc0b14f0b8b152ad1494f1b5e.gif"/ width="100%" height="100%">
			</td>
		  </tr>
		  <tr>
			
		    <td><b>性别</b></td>
		    <td style="color: #FF0000">女</td>
			<td><b>身份证号码</b></td>
			<td>510XXXX</td>
			<td><b>籍贯</b></td>
			<td>四川省</td>
			
		    
		  </tr>
		  <tr>
		    <td><b>学历</b></td>
		    <td style="color: #FF0000;">本科</td>
			<td><b>联系方式</b></td>
			<td>18782325830</td>
			<td><b>邮箱</b></td>
			<td>1494568793@qq.com</td>
		  </tr>
		  <tr>
			  <td colspan="8" align="center" style="background-color: cornflowerblue;"><b>自我评价</b></td>
		  </tr>
		  <tr>
			<td colspan="8" align="left">
				本人性格热情开朗，待人友好，为人真诚谦虚。能吃苦耐劳，尽职尽责，有耐心，有较强的组织能力。
				善于与人沟通。学习刻苦认真，成绩优秀，获得学院奖学金。
				为人诚恳勤奋好学脚踏实地，有较强的团队精神，工作积极进取，态度认真。
				抗压能力和强烈的责任感。
				通过实习和自修学习了人力资源管理相关知识对管理学有所认识，有较强的数理分析能力。
			</td>
		  </tr>
		  <tr>
			<td colspan="8" align="center" style="background-color: cornflowerblue;"><b>个人经历</b></td>
		  </tr>
		  <tr>
			<td colspan="8">
				<ul>
					<li>2019年 任职科技部干事并参与策划多种活动与培训</li>
					<li>2019年 担任社会实践团队负责人并荣获院级一等奖</li>
					<li>2020年 荣获院级成绩优秀奖学金。</li>
					<li>2020年 担任社会实践团队负责人并荣获院级二等奖</li>
					<li>2020年 担任社会实践团队负责人并荣获院级三等奖</li>
				</ul>
			</td>
		  </tr>
		  <tr>
		  			<td colspan="8" align="center"style="background-color: cornflowerblue;"><b>教育背景</b></td>
		  </tr>
		  <tr>
			  <td colspan="8">
				<b>西南科技大学 计算机信息与管理（专科）  2019-2022年</b>
				<br />
				<br />
				主修课程：java、C语言、计算机操作系统、数据库、Java web程序设计、手机应用开发、计算机网络
				<br /><hr color="blue"/>
				<b>西南科技大学  计算机科学与技术（本科） 2022-2024年</b>
				<br />
				<br />
				java、C语言、数据库、Java web程序设计、设计模式、java前端开发
			  </td>
		  </tr>
		  
		</table>
		<script>
			setInterval("document.getElementById('datetime').innerHTML=new Date().toLocaleString();", 1000);
		</script>
		<div id="datetime" align="center"></div>
	</body>
</html>