package com.dingli.resume.Servlet;

import com.dingli.resume.DB.XGGR;
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

@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setCharacterEncoding("gbk");
        response.addHeader(  "Access-Control-Allow-Origin","*");//允许所有来源访同
        response.setHeader("Content-type", "text/html;charset=UTF-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username==null || password==null){
            out.println(OutToJson.getJson(ClientCode.REGIESTER_ERROR, "请求参数不对"));
            return;
        }

        if (username.length()<2){
            out.println(OutToJson.getJson(ClientCode.REGIESTER_ERROR, "用户名字数不得少于两位"));
            return;
        }else if (password.length() <3){
            out.println(OutToJson.getJson(ClientCode.REGIESTER_ERROR, "密码不得少于3位"));
            return;
        }

        try {
            if (XGGR.registerUser(username, password)) {
                out.println(OutToJson.getJson(200, "注册成功"));
            }
        }catch (Exception e){
            out.println(OutToJson.getJson(ClientCode.REGIESTER_ERROR, e.getMessage()));
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
