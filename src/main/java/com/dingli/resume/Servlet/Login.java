package com.dingli.resume.Servlet;

import com.dingli.resume.DB.XGGR;
import com.dingli.resume.dbbean.UserBean;
import com.dingli.resume.utils.ClientCode;
import com.dingli.resume.utils.OutToJson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setCharacterEncoding("gbk");
        response.setContentType("text/html;charset=utf-8");
        response.addHeader(  "Access-Control-Allow-Origin","*");//允许所有来源访同
        response.setHeader("Content-type", "text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //用户登录检查
        if (XGGR.loginCheck(username, password)){
            //利用useBean存储用户名密码
            UserBean userBean = XGGR.getUserByUsername(username);
            //将UserBean存入session
            session.setAttribute("user", userBean);
            out.println(OutToJson.getJson(200, "登录成功"));
        }else{
            //跳转到错误信息页面
//            response.sendRedirect(request.getContextPath()+"/error.jsp");
            out.println(OutToJson.getJson(ClientCode.LOGIN_ERROR, "用户名或密码错误"));
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
