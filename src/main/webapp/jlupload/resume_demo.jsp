<%--
  Created by IntelliJ IDEA.
  User: 那个小胡同学
  Date: 2022/11/10
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>简历</title>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <style>
        tr, td {
            text-align: center;
        }

        table {
            width: 700px;
            height: 800px;
            margin: 0 auto;
        }

        * {
            margin: 0;
            padding: 0;
        }



        video {

            position: absolute;
            top: 0;
            left: 0;
            z-index: 0;

        }
    </style>
</head>
<body>
<div style="position: absolute;top: 0;left: 0;z-index:999">
    <button onclick="location.href='form.jsp'">修改简历</button>
    <button onclick="loginout()">退出登录</button>
</div>
<video loop muted autoplay style="width:100%;height:1000px;"
       src="https://prod-streaming-video-msn-com.akamaized.net/559310a7-dbb0-461c-a863-5cb758607af5/f0474526-90d0-4d3d-aaae-dd68f3f38b28.mp4"></video>
<div style="transform: translateX(25%);top: 99px;left: -104px;width:1200px;height:auto; background-color: rgba(255, 255, 255, 0.7);z-index: 999;position: absolute;">
    <table border="1px" cellspacing="0" align="center">
        <tr>
            <td width="100px" height="20px">姓名</td>
            <td width="150px" id="name"></td>
            <td width="150px">性别</td>
            <td width="150px" id="gender"></td>
            <td width="100px" rowspan="2" colspan="3">
<%--                照片--%>
                <img width="100" id="headimg" src="" alt="">
                <button onclick="changeImg()">修改照片</button>
            </td>
        </tr>
        <tr>
            <td height="20px">年龄</td>
            <td id="age" colspan="3"></td>


        </tr>
        <tr>
            <td height="20px">求职意向</td>
            <td colspan="6" id="job"></td>
        </tr>

        <tr>
            <td height="65px">工作经验</td>
            <td colspan="6" id="experience"></td>
        </tr>

        <tr>
            <td height="75px">自我评价</td>
            <td colspan="6" id="mine"></td>
        </tr>
    </table>
</div>
<script>
    function changeImg(){
        let src = prompt("输入图片地址")
        $('#headimg').attr("src",src)
    }
    function outToPage(data) {
        $("#id").text(data.id)
        $("#name").text(data.name)
        $("#age").text(data.age)
        $("#gender").text(data.gender)
        $("#experience").text(data.experience)
        $("#mine").text(data.mine)
        $("#job").text(data.job)
        $('#headimg').attr("src",data.headimg)
    }

    function getInfo() {
        $.ajax({
            url: "${pageContext.request.contextPath}/getResume",
            dataType: "json",
            success: (req) => {
                console.log(req);
                if (req.code == 200) {
                    outToPage(req.data)
                } else if (req.code == 411) {
                    document.write(req.message)
                    setTimeout(() => {
                        location.href = "login.jsp"
                    }, 2000)
                } else if (req.code == 412) {
                    document.write("没有简历，去编辑简历...")
                    setTimeout(() => {
                        location.href = "form.jsp"
                    }, 2000)
                }

            },
            error: (err) => {
                console.log("出错处理:" + err);
            }
        })
    }

    function loginout() {
        $.ajax({
            url: "${pageContext.request.contextPath}/Loginout",
            dataType: "json",
            success: (req) => {
                console.log(req);
                if (req.code == 200) {
                    document.write(req.message)
                    setTimeout(() => {
                        location.href = "login.jsp"
                    }, 2000)
                } else {
                    alert("失败")
                }
            },
            error: (err) => {
                console.log("出错处理:" + err);
            }
        })
    }
    getInfo()
</script>
</body>
</html>
