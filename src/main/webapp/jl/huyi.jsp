<%@ page contentType="text/html;charset=UTF-8"%>
<%--<%@include file="jlpanel.jsp"%>--%>
<!DOCTYPE html>
<html lang="en">
<%@include file="phone.jsp"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .black {

            font-weight: 700;
        }

        .red {
            color: red;
            font-weight: 700;
        }

        div {
            width: 1000px;
            margin: auto;
        }

        .head {
            display: inline;
            display: flex;
            text-align: center;
            background-color: rgba(49, 140, 128);
        }

        h2 {
            line-height: 80px;
            display: block;
            width: 1000px;
            background-color: rgb(49, 140, 128);
            margin: auto;

        }

        .hand {
            background-color: rgb(242, 242, 242);
            color: rgb(49, 140, 128);

        }

        p {
            color: #000;
            line-height: 37px;
            text-indent: 2em;
        }

        button {
            display: block;
            margin: auto;
        }

        a {

            text-decoration: none;
            color: #000;

        }

        #time {
            text-align: center;
            margin: auto;
        }
    </style>
</head>

<body>
    <h2 align="center">个人简历</h2>
    <div class="head">


        <table border="1" width="1000px" height="250px" align="center" cellspacing="0">
            <tr>
                <td class="black">姓名：</td>
                <td>胡艺</td>
                <td class="red">出生年月：</td>
                <td>2000.01</td>
                <td>电话：</td>
                <td>1008611</td>

                <td rowspan="3" class="padding">
                    <img src="../img/huyi.jpg" width="250">
                </td>
            </tr>
            <tr>
                <td class="black">现居：</td>
                <td>四川绵阳</td>
                <td class="red">毕业院校：</td>
                <td>西南科技大学</td>
                <td>邮箱：</td>
                <td>2056888729@qq.com </td>
            </tr>
            <tr>
                <td class="black">学历：</td>
                <td>专科</td>
                <td class="red">政治面貌：</td>
                <td>预备党员</td>
                <td>微信：</td>
                <td>123456</td>
            </tr>
        </table> <br>
    </div>
    <div class="hand">
        <br>

        <h3>一、教育背景 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Education</h3>

        <p>2019.09-2022.06 &nbsp;&nbsp;&nbsp;西南科技大学应用技术学院&nbsp;&nbsp;&nbsp; 计算机信息管理（专科）</p>
        <p>
            2022.09-至今 &nbsp;&nbsp;&nbsp;绵阳城市学院&nbsp;&nbsp;&nbsp; 计算机科学与技术
        </p>
        <h3>二、荣誉奖励 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Award</h3>
        <p>⚪2022年获西南科技大学优秀毕业生 </p>
        <p>⚪2021年获三好学生</p>
        <p>
            ⚪2021年获优秀团学干部
        </p>

        <h3>三、自我评价 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; About &nbsp; me</h3>
        <p class="suojin">
            本人性格热情开朗，待人友好，为人真诚谦虚。能吃苦耐劳，尽职尽责，有耐心。学习刻苦认真，品学兼优，为人诚恳勤奋好学、脚踏实地，积极进取，用于挑战。有较强的团队精神，工作积极，勤奋刻苦，态度认真。抗压能力和强烈的责任感。
        </p>
        <button align="center">
            <a href="#">返回</a>
        </button>
    </div>

    <div id="time">时间</div>
    <script>
        document.getElementById('time').innerHTML = new Date().toLocaleString()
            + ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
        setInterval(
            "document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
            1000);
    </script>

</body>

</html>