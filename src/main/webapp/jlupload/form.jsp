<%--
  Created by IntelliJ IDEA.
  User: 那个小胡同学
  Date: 2022/11/10
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <style>
        .form{
            width:700px;
            height: 800px;
            margin:0 auto;

            background:lightgray;

        }
        .input{
            border: none;
            padding: 0.9rem 0;
            margin:15px 15px;
            width: 480px;
            border-radius: 7px;
        }
        form{
            width: 600px;
            height: 600px;
            margin: 0 auto;
        }
        .input_btn{
            margin-top: 20px;
            /*margin: 0 auto;*/
            text-align: center;
            transform: translateX(100%);
            outline: none;
            width:100px;
            height: 50px;
            border: 1px;
            background: aqua;
            border-radius: 15px;
        }
    </style>
</head>
<body>

<div class="form">
    <form action="${pageContext.request.contextPath}/AddResume">
        姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:<input  name="name" id="name" type="text" class="input">
        <br/>
        年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   龄:<input name="age" id="age" type="text" class="input">
        <br/>
        性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   别:<input name="gender" id="gender" type="text" class="input">
        <br/>
        图 片  链  接:<input name="headimg" id="headimg" type="text" class="input">
        <br>
        求职意向:&nbsp;<input name="job" id="job" type="text" class="input">
        <br/>
        <div style="display: flex;justify-content: center;align-items: center">
            工作经验:<textarea type="textarea" name="experience" id="experience" class="input" style="height: 100px" ></textarea>
        </div>
        <br/>
        <div style="display: flex;justify-content: center;align-items: center">
            自我评价:<textarea type="textarea" name="mine" id="mine" class="input" style="height: 100px"></textarea>
        </div>
        <br/>
        <input type="button" onclick="updateResume()" value="提交" class="input_btn">
    </form>
</div>
<script>
    // alert(123)
    function outToPage(data){
        $("#id").val(data.id)
        $("#name").val(data.name)
        $("#age").val(data.age)
        $("#gender").val(data.gender)
        $("#experience").val(data.experience)
        $("#mine").val(data.mine)
        $("#job").val(data.job)
    }
    function getFromPage(){
        let json = {};
        json.id = $("#id").val()
        json.name = $("#name").val()
        json.age = $("#age").val()
        json.gender = $("#gender").val()
        json.experience = $("#experience").val()
        json.mine = $("#mine").val()
        json.job = $("#job").val()
        json.headimg = $('#headimg').val()
        console.log(json)
        return json
    }
    function getInfo(){
        $.ajax({
            url : "${pageContext.request.contextPath}/getResume",
            dataType:"json",
            type:'post',
            success : (req) => {
                console.log(req);
                if (req.code == 200){
                    outToPage(req.data)
                }else if (req.code == 411){
                    document.write(req.message)
                    setTimeout(()=>{location.href = "login.jsp"},2000);
                }
            },
            error : (err) => {
                console.log("出错处理:"+err);
            }
        })
    }
    function updateResume(){
        $.ajax({
            url : "${pageContext.request.contextPath}/AddResume",
            data:getFromPage(),
            dataType:"json",
            success : (req) => {
                console.log(req);
                if (req.code == 200){
                    document.write(req.message)
                    setTimeout(()=>{location.href = "resume_demo.jsp"},2000);
                }else if (req.code == 411){
                    document.write(req.message)
                    setTimeout(()=>{location.href = "login.jsp"},2000);
                }else if (req.code == 403){
                    alert(req.message)
                }
            },
            error : (err) => {
                console.log("出错处理:"+err);
            }
        })
    }
    getInfo()
    getFromPage()
</script>
</body>
</html>
