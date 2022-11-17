<%--
  Created by IntelliJ IDEA.
  User: 那个小胡同学
  Date: 2022/11/10
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
<%--    导入jquery--%>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <style>
        :root {
            /* COLORS */
            /*--white: white;*/
            --gray: #333;
            --blue: #0367a6;
            --lightblue: #008997;

            /* RADII */
            --button-radius: 0.7rem;

            /* SIZES */
            --max-width: 100%;
            --max-height: 100vh;
            font-size: 16px;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
            Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
        }

        .form_title {
            font-weight: 300;
            letter-spacing: 1em;
            font-weight:550;
            /* margin:0 auto; */
            text-align: center;
            margin-bottom: 1.25rem;
        }

        .link {
            color: var(--gray);
            font-size: 0.9rem;
            margin: 1.5rem 0;
            text-decoration: none;
        }

        .container {
            /*background-color: white;*/
            border-radius: var(--button-radius);
            box-shadow: 0 0.9rem 1.7rem rgba(0, 0, 0, 0.25),
            0 0.7rem 0.7rem rgba(0, 0, 0, 0.22);
            height: var(--max-height);
            max-width: var(--max-width);
            overflow: hidden;
            position: relative;
            margin: 0 auto;
            width: 100%;
            height: 100vh;
            z-index: 999;
        }

        .container__form {
            height: 500px;
            width: 500px;
            background: rgba(255,255,255,0.3);
            box-shadow: 0 0.9rem 1.7rem rgba(0, 0, 0, 0.25),
            0 0.7rem 0.7rem rgba(0, 0, 0, 0.22);
            transform: translateY(50%);
            margin: 0 auto;
            /* // transform: translateX(100%); */

            /* // transition: all 0.6s ease-in-out; */
        }


        .form > .btn {
            margin-top: 1.5rem;
            /* margin-left: 5rem; */
        }

        .btn:active {
            transform: scale(0.95);
        }

        .btn:focus {
            outline: none;
        }

        .form {
            /*background-color: white;*/
            display: flex;
            align-items: center;
            justify-content: space-around;
            flex-direction: column;
            padding: 0 3rem;
            width: 400px;
            height: 500px;
            text-align: center;
            /* // transform: translateY(50%);
            // transform: translateX(50%); */
        }

        .input {
            background-color: lightgray !important;
            border: none;
            padding: 0.9rem 0;
            margin: 0.5rem 0.2rem;
            width: 480px;
            border-radius: 7px;

        }
        .input_btn{
            outline: none;
            border: 1px;
            border-radius: 17px;
            background: aqua;
        }
        .bgc{
            width: 100%;
            height: 100vh;
            position: absolute;
            top: 0;
            left: 0;
            z-index: -99;
        }

        @keyframes show {
            0%,
            49.99% {
                opacity: 0;
                z-index: 1;
            }

            50%,
            100% {
                opacity: 1;
                z-index: 5;
            }
        }
    </style>
</head>
<body>
<div class="bgc">
    <video loop muted autoplay style="width: 100%;height: 100vh;" src="https://prod-streaming-video-msn-com.akamaized.net/559310a7-dbb0-461c-a863-5cb758607af5/f0474526-90d0-4d3d-aaae-dd68f3f38b28.mp4"></video>

</div>
<div class="container">
    <!-- Sign In -->
    <div class="container__form">
        <form action="${pageContext.request.contextPath}/Login" class="form">
            <h2 class="form_title">登录</h2>
            <input
                    type="text"
                    placeholder="User"
                    class="input"
                    name="username"
                    id="username"
            />
            <input
                    type="password"
                    placeholder="Password"
                    class="input"
                    name="password"
                    id="password"
            />
            <span style="color: red" id="show"></span>
            <input type="button" value="SIGN IN" onclick="login()" class="input_btn">
            <input type="button" value="Register" onclick="location.href='register.jsp'"  class="input_btn">

        </form>
    </div>
</div>
</body>

<script>
    function login(){
        let json = {}
        json.username = $("#username").val()
        json.password = $("#password").val()
        console.log(json)
        $.ajax({
            url : "${pageContext.request.contextPath}/Login",
            data : json,
            dataType:"json",
            success : (req) => {
                console.log(req);
                if (req.code == 200){
                    document.write(req.message)
                    setTimeout(()=>{location.href = "resume_demo.jsp"},2000);
                }else if (req.code == 401){
                    // alert(req.message)
                    $('#show').text(req.message)
                    setTimeout(()=>{$('#show').text('')},2000);
                }
            },
            error : (err) => {
                console.log("出错处理:"+err);
            }
        })
    }
</script>
</html>
