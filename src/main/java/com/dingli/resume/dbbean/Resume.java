package com.dingli.resume.dbbean;

public class Resume {   //简历
    private int id;
    private int userid;
    private String name;
    private int age;
    private String gender;
    private String experience;
    private String mine;
    private String job;
    private String headimg;

    public String getHeadimg() {
        return headimg;
    }

    public void setHeadimg(String headimg) {
        this.headimg = headimg;
    }

    public Resume() {
    }

    public Resume(int userid, String name, int age, String gender, String experience, String mine, String job, String headimg) {
        this.userid = userid;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.experience = experience;
        this.mine = mine;
        this.job = job;
        this.headimg = headimg;
    }

    public Resume(int id, int userid, String name, int age, String gender, String experience, String mine, String job, String headimg) {
        this.id = id;
        this.userid = userid;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.experience = experience;
        this.mine = mine;
        this.job = job;
        this.headimg = headimg;
    }

    public Resume(int id, int userid, String name, int age, String gender, String experience, String mine, String job) {
        this.id = id;
        this.userid = userid;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.experience = experience;
        this.mine = mine;
        this.job = job;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getMine() {
        return mine;
    }

    public void setMine(String mine) {
        this.mine = mine;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    @Override
    public String toString() {
        return "{" +
                "id=" + id +
                ", userid=" + userid +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", gender='" + gender + '\'' +
                ", experience='" + experience + '\'' +
                ", mine='" + mine + '\'' +
                ", job='" + job + '\'' +
                ", headimg='" + headimg + '\'' +
                '}';
    }
}
