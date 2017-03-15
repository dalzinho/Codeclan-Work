package com.codeclan.example.inheritanceexample;

/**
 * Created by user on 10/03/2017.
 */

public abstract class Telephone {

    private int number;

    public Telephone(int number){
        this.number = number;
    }

    public String dial(int number){
        return "Dialling " + number + ". RING! RING!";
    }

    public abstract String move(String destination);

}
