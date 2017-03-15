package com.codeclan.example.myapplication;

/**
 * Created by user on 14/03/2017.
 */

public enum Item {
    AERO(65);

    int price;

    public int getPrice() {
        return price;
    }

    Item(int price){

    }
}
