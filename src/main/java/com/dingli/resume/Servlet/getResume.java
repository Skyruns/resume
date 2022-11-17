package com.dingli.resume.Servlet;

import com.dingli.resume.DB.XGGR;
import com.dingli.resume.dbbean.Resume;
import com.dingli.resume.dbbean.UserBean;
import com.dingli.resume.utils.ClientCode;
import com.dingli.resume.utils.OutToJson;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "getResume", value = "/getResume")
public class getResume extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        response.addHeader(  "Access-Control-Allow-Origin","*");//允许所有来源访同
        response.setHeader("Content-type", "text/html;charset=UTF-8");
        UserBean user = (UserBean) request.getSession().getAttribute("user");
        //如果用户登录
        if (user != null){
            //通过用户id获取简历
            Resume resume = XGGR.getResumeByUserId(user.getId());
            //如果数据库没有简历数据
            if(resume == null){
                response.getWriter().println(OutToJson.getJson(ClientCode.Resume_NULL, "简历内容为空"));
            }else{ //如果数据库有简历数据
                response.getWriter().println(OutToJson.getJson(200, (new Gson().fromJson(resume.toString(),JsonObject.class)),"获取用户简历成功"));
            }
        }else{//如果用户未登录或登录过期
            response.getWriter().println(OutToJson.getJson(ClientCode.USERNAME_NULL, "请登录"));
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
