<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/10/26
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="phone.jsp"%>
<%--<%@include file="jlpanel.jsp"%>--%>
<html>
<head>
    <title>胡巧</title>
</head>
<style>
    .all {
        height: 100vh;
        overflow: scroll;
    // background-color: #000;
    }


    * {
        margin: 0;
        padding: 0;
    }

    .container {
        width: 1200px;
        height: 1400px;
        margin: 0 auto;
        /*background-color: rgba($color: #fff, $alpha: 0.7);*/
        /* overflow: hidden; */
        /* display: flex; */
    }

    .box {
        display: flex;
    }

    .name {
        font-size: 40px;
        margin: 25px;
        width: 100px;
        display: inline-block;
        vertical-align: middle;
        margin-left: 140px;
        font-weight: 550;
    }

    .work {
        white-space: normal;
        display: inline-block;
        margin: 25px;
        margin-left: 140px;
        line-height: 52px;
        word-spacing: 0.5px;
        vertical-align: middle;
    }

    .content_box {
        width: 1000px;
        height: 1200px;
        border: 2px solid black;
        margin: 0 auto;
    }

    .lit {
        display: flex;
    }

    .header {
        display: flex;
        flex-wrap: wrap;
        margin: 5px auto;
        width: 800px;
        height: 175px;
        position: relative;
        border-bottom: 5px solid black;
    }

    .header p {
        /* flex:1; */
        text-align: center;
        line-height: 50px;
        width: 300px;
        height: 50px;
    }

    .head {
        width: 100px;
        height: 130px;
        position: absolute;
        top: -72px;
        right: 0px;
        text-align: center;
        line-height: 130px;
        border: 1px solid black;
        background-color: #fff;
    }
    .head img {
        width: 95px;
        height: 125px;
        padding: 2px 2px;
    }

    .person {
        /* padding-left: 50px;
                  padding-top: 20px; */
        margin-top: 10px;
        font-size: 30px;
    }

    .own {
        width: 800px;
        height: 170px;
        margin: 30px auto;
        /* border: 1px solid black; */
    }

    .lit_box {
        width: 100%;
        height: 30px;
        /* display: flex; */
        margin-bottom: 10px;
        border: 1px solid black;
        background-color: hotpink;
    }

    .lit_box p {
        text-align: center;
        font-size: 20px;
        line-height: 30px;
    }

    .class_box {
        display: flex;
    }

    .left {
        width: 100px;
    }
    .left p {
        font-size: 13px;
        margin-bottom: 13px;
    }
    .right {
        width: 700px;
    }
    .right p {
        text-align: left;
        padding-left: 50px;
        margin-bottom: 8px;
    }
    h1 {
        text-align: center;
    }
</style>
<body>

<div class="all">
    <top :choice="choice" :title="title"></top>
    <div class="container">
        <h1>个人简历</h1>
        <div class="box">
            <p class="name">胡巧</p>
            <p class="work"><b>求职意向</b>:&nbsp;web前端开发类相关职位</p>
        </div>

        <div class="content_box">
            <div class="lit">
                <div class="header">
                    <p class="person"><b>个人信息</b></p>
                    <p><b>手机</b>:&nbsp;19881660612</p>
                    <p><b>微信</b>:&nbsp;hu-_-001-_-</p>
                    <p><b>邮箱</b>:&nbsp;2654878208@qq.com</p>
                    <p><b style="color: red">身份证号</b>:&nbsp;500225200103276855</p>
                    <p><b>学历</b>:&nbsp;大专</p>
                    <div class="head">
                        <img
                                src="https://pic3.zhimg.com/80/v2-b56c680b37e1bd369bd52c4e304b9f70_qhd.jpg"
                                alt=""
                        />
                    </div>
                </div>
            </div>

            <div class="own">
                <div class="lit_box">
                    <p>自我评价</p>
                </div>
                <p>
                    本人性格开朗、稳重、有活力，待人热情、真诚.有较强的组织能力和团体协作精神，良好的社交能力，善于处
                    理各种人际关系。能迅速的适应各种环境，并融合其中.能把企业当作家庭，把自己当作家庭的一
                    一员，在努力为企 业服务的过程中实现自身价值。
                </p>
            </div>

            <div class="own">
                <div class="lit_box">
                    <p>教育经历</p>
                </div>
                <div class="class_box">
                    <div class="left">
                        <p><b>大数据技术与应用</b></p>
                        <p>2019.8-2022.6</p>
                    </div>
                    <div class="right">
                        <p>西南科技大学城市学院</p>
                        <p>专业年级排名前50</p>
                    </div>
                </div>
            </div>

            <div class="own">
                <div class="lit_box">
                    <p>工作经验</p>
                </div>
                <div class="class_box">
                    <div class="left">
                        <p><b>web前端开发实习生</b></p>
                        <p>2021.10-2022.3</p>
                    </div>
                    <div class="right">
                        <p>四川旭信科技有限公司</p>
                        <p>主要负责页面的编写,接口的对接,以及部分功能的实现</p>
                    </div>
                </div>
            </div>

            <div class="own">
                <div class="lit_box">
                    <p>技能证书</p>
                </div>
                <div class="class_box">
                    <div class="left">
                        <p><b>语言能力</b></p>
                        <p><b>办公能力</b></p>
                        <p><b>个人能力</b></p>
                    </div>
                    <div class="right">
                        <p>英语CET4</p>
                        <p>熟练使用html5,css5,vue,js进行页面编写,以及进行功能实现</p>
                        <p>
                            能够独立工作,适应能力强,有良好的沟通协调能力,具备良好的团队精神
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
