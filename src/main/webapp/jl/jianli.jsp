<%@ page contentType="text/html;charset=UTF-8"%>

<%--<%@ include file="hello.jsp"%>--%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>简历</title>
</head>
<style>
    .all {
        height: 100vh;
        overflow:scroll;
        z-index: 999;
        position: absolute;
        top: 0;
        left: 50%;
        transform: translate(-50%);
    //   background-color: rgba(0,0,0,0.5);
    }

    th{
        text-align: center;
        font-size: 30px;
        height: 60px;
        background-color: rgba(240,255,252,0.5);
    }
    td{
        width: 200px;
    }
    .right{
        text-align: right;
        font-weight: bold;
        background-color: rgba(240,255,252,0.5);
    }
    .left{
        text-align: left;
    }
    table{
        background-color: rgba(255,255,255,0.8);
        width: 100%;
        text-align: center;
    }
    .span{
        text-indent: 30px;
    }
</style>
<%--<%--%>
<%--    Thread.sleep(1000);--%>
<%--%>--%>
<%--<jsp:forward page="index.jsp"></jsp:forward>--%>
<%
//    response.setHeader("refresh","5;URL=index.jsp");
%>
<body>
<%@ include file="../bg.html"%>
<a href="../chenfa.jsp">跳转乘法</a>
<%--<div class="all" style="z-index: 999;position: absolute;top: 0;left: 0">--%>
<div class="all">
    <div style="width: 700px;margin: 0 auto;">
        <table border="1px" cellspacing="0">
            <th colspan="7">
                这是我的第一份电子简历
            </th>
            <tr>
                <td class="right"><b>姓名：</b></td>
                <td>冷浪</td>

                <td class="right"><b style="color:red;">性别：</b></td>
                <td>男</td>

                <td class="right"><b>年龄：</b></td>
                <td>21</td>

                <td colspan="2" rowspan="3"><img style="width: 100px;" src="https://img2.baidu.com/it/u=390829681,3002818272&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500" alt=""></td>
            </tr>

            <tr>
                <td class="right"><b>学历：</b></td>
                <td>本科</td>

                <td class="right"><b style="color:red;">邮箱：</b></td>
                <td colspan="3">508132763@qq.com</td>

            </tr>

            <tr>
                <td class="right">求职意向：</td>
                <td colspan="5">全栈工程师</td>

            </tr>

            <tr>
                <td class="right">项目经历：</td>
                <td class="left" colspan="6">
                    <b> 2021.03 - 2021.06 校园综测查询</b><br>
                    <p>
                    <div class="span">
                        负责后端功能开发，利用爬虫功能获取信息，分析数据并存入数据库，其中利用了
                        python的request和beautifulsoup模块。数据库采用的MySQL，设计建库建表，使用
                        触发器功能等。还有支付功能编写
                    </div>
                    <div class="span">
                        负责前端开发，接口编写和异步数据请求编写，部分vue技术处理。
                    </div>
                    </p>
                </td>
            </tr>

            <tr style="height:36px">
                <td rowspan="5" class="right">职业技能：</td>
                <td>编程语言</td>
                <td class="left" colspan="6">
                    python
                    java
                    vb
                    c
                </td>
            </tr>
            <tr style="height:36px">
                <td>网页开发</td>
                <td class="left" colspan="6">
                    html css js jq vue
                </td>
            </tr>
            <tr>
                <td>Linux环境</td>
                <td class="left" colspan="6">
                    docker使用、
                    screen使用
                </td>
            </tr>
            <tr>
                <td>网站部署</td>
                <td class="left" colspan="6">
                    javaweb
                    nginx
                </td>
            </tr>
            <tr>
                <td>数据库 </td>
                <td class="left" colspan="6">
                    mysql
                    sqlserver
                </td>
            </tr>
            <tr>
                <td class="right">奖项证书：</td>
                <td class="left" colspan="6">优秀毕业生、学习成绩优秀</td>

            </tr>

            <tr>
                <td class="right">自我评价：</td>
                <td class="left" colspan="6">
                    <p>
                    <div class="span">
                        学习方面，我觉得大学生的首要任务还是学好文化知识，所以在学习上我踏踏实实，一点也不放松。
                    </div>
                    <div class="span">
                        对于我们计算机相关专业的学生来说，光光学好书本上的知识是远远不够的。我利用课余时间经常阅览计算机类的书籍，根据自己的想法做一些项目，不懂的就翻阅书籍，上网搜索学习。
                    </div>
                    <div class="span">
                        学习固然重要，一个人能力的培养也不容忽视。在参与学校活动的过程中，我结交了一些很好的朋友，学到了为人处事的方法，锻炼了自己的能力；这些经历使我明白有些事情如果尝试了，成功的机会就有一半，如果不去尝试，成功的几率只能为零。机会来临时，我们就要好好地把握。
                    </div>
                    <div class="span">
                        思想方面，我追求上进，思想觉悟有了很大的提高。我热爱祖国，热爱人民，坚决拥护共产党领导和社会主义制度。我觉得一个人的价值是由他对社会对别人所做的贡献来衡量的。
                    </div>
                    </p>
                </td>

            </tr>

        </table>
    </div>

</div>
</body>
</html>