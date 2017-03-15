package com.codeclan.example.myapplication;

import org.junit.Before;
import org.junit.Test;

import static com.codeclan.example.myapplication.Coins.*;
import static com.codeclan.example.myapplication.Item.*;
import static junit.framework.Assert.assertEquals;

/**
 * Created by user on 14/03/2017.
 */

public class TestVendy {

    Vendy vendy;
    @Before
    public void before(){
        vendy = new Vendy();
    }

    @Test
    public void testVendyHasZeroBalanceAtSwitchOn(){
        assertEquals(0, vendy.getBalance());
    }


    @Test
    public void testInsertDimeIncreasesBalancetoTen(){
        vendy.insertCoin(DIME);
        assertEquals(10, vendy.getBalance());
    }

    @Test
    public void testCanAddNickelBalanceIsFive(){
        vendy.insertCoin(NICKEL);
        assertEquals(5, vendy.getBalance());
    }
    @Test
    public void testCanAddMultipleCoins(){
        vendy.insertCoin(DIME);
        vendy.insertCoin(NICKEL);
        assertEquals(15, vendy.getBalance());
    }

    @Test
    public void testCanAddQuartersAndDollars(){
        vendy.insertCoin(DOLLAR);
        vendy.insertCoin(QUARTER);
        assertEquals(125, vendy.getBalance());
    }
    @Test
    public void testRefundSpitsMoneyBack(){
        vendy.insertCoin(DIME);
        vendy.insertCoin(NICKEL);
        vendy.refund();
        assertEquals(0, vendy.getBalance());
    }

    @Test
    public void testItemACostsSixtyFiveCents(){
        assertEquals(65, vendy.getItemCost(AERO));
    }
}
