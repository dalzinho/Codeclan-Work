package com.codeclan.example.myapplication;

/**
 * Created by user on 14/03/2017.
 */

public enum Coins {
    NICKEL(5),
    DIME(10),
    QUARTER(25),
    DOLLAR(100);

    int value;

    Coins(int value){
        this.value = value;
    }

    public int getValue() {
        return value;
    }
}

