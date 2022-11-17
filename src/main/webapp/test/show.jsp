<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/11/17
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>展现诗词</title>
    <script src="https://code.jquery.com/jquery-1.6.1.js"></script>
</head>
<body>
<button id="btn">加载数据</button>
<div id="box"></div>
<script type="text/javascript">
    $('#btn').click(function() {
        $('#box').load('target.jsp');
    });
</script>
</body>
</html>
