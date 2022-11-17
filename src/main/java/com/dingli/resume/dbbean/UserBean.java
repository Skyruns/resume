package com.dingli.resume.dbbean;

public class UserBean {
    int id;
    String username;
    String password;

    public UserBean(){}
    public UserBean(String username, String passwd){
        this.username = username;
        this.password = passwd;
    }

    public UserBean(int id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String passwd) {
        this.password = passwd;
    }

    @Override
    public String toString() {
        return "UserBean{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
