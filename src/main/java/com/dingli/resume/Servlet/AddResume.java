package com.dingli.resume.Servlet;


import com.dingli.resume.DB.XGGR;
import com.dingli.resume.dbbean.Resume;
import com.dingli.resume.dbbean.UserBean;
import com.dingli.resume.utils.ClientCode;
import com.dingli.resume.utils.OutToJson;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddResume", value = "/AddResume")
public class AddResume extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.addHeader(  "Access-Control-Allow-Origin","*");//允许所有来源访同
        response.setHeader("Content-type", "text/html;charset=UTF-8");
        response.setContentType("text/html;charset=utf-8");
//        String username = (String) request.getSession().getAttribute("username");
        UserBean user = (UserBean) request.getSession().getAttribute("user");
//        UserBean userBean = XGGR.getUserByUsername(username);
        if (user == null){
            response.getWriter().println(OutToJson.getJson(ClientCode.USERNAME_NULL, "登录已过期，请重新登录"));
            return;
        }

        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String experience = request.getParameter("experience");
        String mine = request.getParameter("mine");
        String job = request.getParameter("job");
        String headimg = request.getParameter("headimg");

        JsonObject json = new JsonObject();
        Resume resume = new Resume();
        try {
            resume.setUserid(user.getId());
            resume.setName(name);
            resume.setAge(Integer.valueOf(age));
            resume.setGender(gender);
            resume.setExperience(experience);
            resume.setMine(mine);
            resume.setJob(job);
            resume.setHeadimg(headimg);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("字符格式有问题");
            response.getWriter().println(OutToJson.getJson(ClientCode.Resume_ERROR, "字符格式有问题"));
            return;
        }
        //查找数据库有没有简历数据
        Resume r = XGGR.getResumeByUserId(user.getId());
        //如果数据库没有简历数据
        if (r == null){
            //执行插入数据
            if (XGGR.addResume(resume)){
                response.getWriter().println(OutToJson.getJson(200, "上传简历成功"));
            }else{
                response.getWriter().println(OutToJson.getJson(ClientCode.Resume_ERROR, "上传简历失败"));
            }
        }
        //如果数据库有简历数据
        else{
            //将简历id拿过来放入新数据
            resume.setId(r.getId());
            //执行更新数据
            if (XGGR.updateResume(resume)){
                response.getWriter().println(OutToJson.getJson(200, "上传简历成功"));
            }else{
                response.getWriter().println(OutToJson.getJson(ClientCode.Resume_ERROR, "上传简历失败"));
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

//    boolean updateUserInfo(UserBean userBean, String name){
//        try {
//            Resume resume = XGGR.getResumeByName(name);
//            userBean.setResume_id(resume.getId());
//            XGGR.updateUser(userBean);
//            return true;
//        }catch (Exception e){
//            return false;
//        }
//
//    }
}
