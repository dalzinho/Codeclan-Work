package com.codeclan.example.myapplication;

/**
 * Created by user on 14/03/2017.
 */

public class Vendy {
    private int balance = 0;

    public int getBalance() {
        return balance;
    }

    public void insertCoin(Coins coin){
        balance += coin.getValue();
    }

    public void refund(){
        this.balance = 0;
    }


}
