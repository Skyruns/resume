<%@ page contentType="text/html;charset=UTF-8"%>
<%--<%@include file="jlpanel.jsp"%>--%>
<%@include file="phone.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人简介</title>
    <style>
        #black{
            font-weight: bold;
        }
        #red {
            font-weight: bold;
            color: red;
        }
        #time{
            text-align: center;
        }
    </style>
</head>
<body>
    <div style="width: 50%;margin: 0 auto;">
        <h1 style="text-align: center;">我的第一份电子简历</h1>
        <table border="1" width ="500" hight = "200" cellspacing="0" align="center">
            <tr>
                <td id="black">姓名</td>
                <td>刘名汝 </td>
                <td id="red">性别</td>
                <td>女 </td>
                <td rowspan="2"><img src="2.jpg" width="120"></td>
            </tr>
            <tr>    
               
                <td id="black">年龄</td>
                <td>21 </td>
                <td id="red">学历</td>
                <td>大专</td>
            </tr>

        </table>
    </div>
    <div id="time">
        <script>
          document.getElementById('time').innerHTML = new Date().toLocaleString()
                  + ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
          setInterval(
                  "document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
                  1000);
        </script>
      </div>
</body>
</html>