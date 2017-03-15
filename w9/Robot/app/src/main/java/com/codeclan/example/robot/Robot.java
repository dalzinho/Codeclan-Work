package com.codeclan.example.robot;

import android.util.Log;

/**
 * Created by user on 10/03/2017.
 */

public class Robot {

    String name;
    String metal;
    int age;
    int batteryLevel;



    public Robot(String name, String metal, int age) {
        this.name = name;
        this.metal = metal;
        this.age = age;
        this.batteryLevel = 100;
    }

    public String hoover(){
        for (int i = 0; i <= 10; i++){
            this.batteryLevel -= 1;
        }
        return "I'm hoovering!";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMetal() {
        return metal;
    }

    public void setMetal(String metal) {
        this.metal = metal;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getBatteryLevel() {
        return batteryLevel;
    }
}
