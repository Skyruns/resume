package com.dingli.resume.utils;

import com.google.gson.JsonObject;

public class OutToJson {
    public static String getJson(int code, JsonObject data ,String message){
        JsonObject json = new JsonObject();
        json.addProperty("code",code);
        json.add("data", data);
        json.addProperty("message", message);
        return json.toString();
    }
    public static String getJson(int code, String data ,String message){
        JsonObject json = new JsonObject();
        json.addProperty("code",code);
        json.addProperty("data", data);
        json.addProperty("message", message);
        return json.toString();
    }
    public static String getJson(int code, String message){
        JsonObject json = new JsonObject();
        json.addProperty("code",code);
//        json.add("data", data);
        json.addProperty("message", message);
        return json.toString();
    }
}
