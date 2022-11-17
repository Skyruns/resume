package com.dingli.resume.DB;

import com.dingli.resume.dbbean.Resume;
import com.dingli.resume.dbbean.UserBean;

import java.sql.ResultSet;

public class XGGR {
    //登录检查
    public static boolean loginCheck(String username, String password){
        String sql = "select * from users where username='%s'" +
                " and password='%s'";
        sql = String.format(sql, username, password);
        try {
            ResultSet rs = DBManager.getInstance().getResultSet(sql);
            if (rs.next()){
                return true;
            }else{
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    //注册用户
    public static boolean registerUser(String username, String password){
        String sql = "insert into users (username,password) values ('%s','%s')";
        sql = String.format(sql,username,password);
        UserBean u = XGGR.getUserByUsername(username);
        if (u!=null){
            throw new RuntimeException("用户名重复");
        }
        try {
            int n = DBManager.getInstance().insertDB(sql);
            return n>0;
        } catch (Exception e) {
            throw new RuntimeException("注册失败");
//            return false;
        }
    }
    //通过用户名获取用户
    public static UserBean getUserByUsername(String username){
        String sql = "select * from users where username='%s'";
        sql = String.format(sql, username);
        UserBean u;
        try {
            ResultSet rs = DBManager.getInstance().getResultSet(sql);
            if (rs.next()){
                u = new UserBean(rs.getInt("id"), rs.getString("username"), rs.getString("password"));
                return u;
            }else{
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
//    //更新简历resume_id
//    public static boolean updateUser(UserBean userBean){
//        String sql = "update users set resume_id=%d where username='%s'";
//
//        sql = String.format(sql, userBean.getResume_id(), userBean.getUsername());
//        try {
//            int n = DBManager.getInstance().insertDB(sql);
//            return n>0;
//        } catch (Exception e) {
//            return false;
//        }
//    }
    //通过简历id查找简历
    public static Resume getResumeById(int id){
        String sql = "select * from resume where id=%d";
        sql = String.format(sql, id);
        Resume r;
        try {
            ResultSet rs = DBManager.getInstance().getResultSet(sql);
            if (rs.next()){
                r = new Resume(rs.getInt("id"), rs.getString("name"), rs.getInt("age"),
                        rs.getString("gender"),rs.getString("experience"),rs.getString("mine"),
                        rs.getString("job"), rs.getString("headimg"));
                return r;
            }else{
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    //通过简历的userid查找简历
    public static Resume getResumeByUserId(int userid){
        String sql = "select * from resume where userid=%d";
        sql = String.format(sql, userid);
        Resume r;
        try {
            ResultSet rs = DBManager.getInstance().getResultSet(sql);
            if (rs.next()){
                r = new Resume(rs.getInt("id"),rs.getInt("userid") ,
                        rs.getString("name"), rs.getInt("age"),
                        rs.getString("gender"),rs.getString("experience"),
                        rs.getString("mine"),rs.getString("job"),
                        rs.getString("headimg"));

                return r;
            }else{
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    //通过简历名字查找简历
    public static Resume getResumeByName(String name){
        String sql = "select * from resume where name='%s'";
        sql = String.format(sql, name);
        Resume r;
        try {
            ResultSet rs = DBManager.getInstance().getResultSet(sql);
            if (rs.next()){
                r = new Resume(rs.getInt("id"), rs.getInt("userid"),
                        rs.getString("name"), rs.getInt("age"),
                        rs.getString("gender"),rs.getString("experience"),
                        rs.getString("mine"),rs.getString("job"));
                return r;
            }else{
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    //添加简历
    public static boolean addResume(Resume r){
        String sql = "insert into resume (userid,name,age,gender,experience,mine,job,headimg) values (" +
                                        "'%d','%s','%d','%s','%s','%s','%s','%s')";
        sql = String.format(sql, r.getUserid(), r.getName(), r.getAge(), r.getGender(), r.getExperience(), r.getMine(),r.getJob(),r.getHeadimg());
        if (r.getName()==null || r.getName().equals("")) return false;
        try {
            int n = DBManager.getInstance().insertDB(sql);
            return n>0;
        } catch (Exception e) {
            return false;
        }
    }
    //更新
    public static boolean updateResume(Resume r){
        String sql = "update resume set name='%s', age=%d, " +
                "gender='%s', experience='%s', mine='%s', " +
                "job='%s', headimg='%s' where id=%d";
        sql = String.format(sql, r.getName(), r.getAge(), r.getGender(),
                r.getExperience(), r.getMine(),r.getJob(), r.getId(), r.getHeadimg());
        if (r.getName()==null || r.getName().equals("")) return false;
        try {
            int n = DBManager.getInstance().insertDB(sql);
            return n>0;
        } catch (Exception e) {
            return false;
        }
    }

}
