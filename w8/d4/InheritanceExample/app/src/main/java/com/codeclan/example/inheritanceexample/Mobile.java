package com.codeclan.example.inheritanceexample;

/**
 * Created by user on 10/03/2017.
 */

public class Mobile extends Telephone{

    private int number;

    public Mobile(int number){
        super(number);
    }

    public String move(String destination){
        return "You wander freely to " + destination + ".";
    }
}
