package com.codeclan.example.inheritanceexample;

/**
 * Created by user on 10/03/2017.
 */

public class FixedPhone extends Telephone{

    private int number;

    public FixedPhone(int number){
        super(number);
    }

    @Override
    public String move(String destination){
        return "You attempt to go to " + destination + " but are thwarted by the curly telephone cable.";
    }
}
