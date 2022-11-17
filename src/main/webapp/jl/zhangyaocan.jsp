<%@ page contentType="text/html;charset=UTF-8"%>
<%--<%@include file="jlpanel.jsp"%>--%>
<%@include file="phone.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>张耀灿的个人简历</title>
</head>
<body>

	<table border="1" width="800px" height="250px"  cellspacing="0" >
  <caption style="font-weight:bold">我的第一个电子简历</caption>
  <tr>
	 
  </tr>
  <tr>
     <td style="font-weight:bold;text-align:center">姓名</td>
    <td>张耀灿</td>
	  <td style="font-weight:bold;text-align:center">性别</td>
	  <td style="text-align:center">男</td>
	   <td  rowspan="2" style="font-weight:bold;text-align:center">照片</td>
	  <td rowspan="2"> 
		 <img src="logo.jpg" width="485" height="350"/>
	  </td>
  </tr>
  <tr >
    <td style="color:red;font-weight:bold;text-align:center">学历</td>
    <td style="text-align:center">专科</td>
	  <td style="color:red;font-weight:bold;text-align:center">身份证号</td>
	  <td style="text-align:center">510068589489</td>
</table>
<br><br>
<table >
  <td style="color:green;font-weight:bold">一、教育背景</td>
</table>
<pre><p style="font-size: 15px;">2019.09-2022.06&nbsp;西南科技大学&nbsp;计算机信息管理<br><br>2022.09-至今&nbsp;绵阳城市学院&nbsp;计算机科学与技术</p></pre>
  <table>
    <td style="color:green;font-weight:bold">二、校园经历</td>
  </table>
   <pre> <p style="font-size: 15px;">2019.09-2021.11&nbsp;&nbsp;&nbsp;&nbsp;贫困生评议&nbsp;&nbsp;&nbsp;&nbsp;评议员  <br><br>了解同学们的具体困难。<br><br>将同学们的困难以困难程度分类讨论。<br><br>为同学申请学校补助。
    </p></pre>
  <table>
    <td style="color:green;font-weight:bold">三、自我评价</td>
  </table>
  <pre><p style="font-size: 15px;">
    &nbsp;&nbsp;有较强的分析能力；踏实肯干，对待学习工作认真负责，有很强的社会责任感；在学习方面相较于之前有明显的积极性提升。
  </p></pre>
  <button>
      <a href="#">返回</a>
  </button>
  <div id="time"style="text-align: center">
    <script>
        document.getElementById('time').innerHTML = new Date().toLocaleString()
            + ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
        setInterval(
            "document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
            1000);
    </script>
</div>
</body>
</body>

</html>
</body>
</html>