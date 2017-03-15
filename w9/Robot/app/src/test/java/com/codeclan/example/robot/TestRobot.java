package com.codeclan.example.robot;

import android.util.Log;

import org.junit.Before;
import org.junit.Test;

import static junit.framework.Assert.assertEquals;

/**
 * Created by user on 10/03/2017.
 */

public class TestRobot {

    Robot robot;

    @Before
    public void setUp() throws Exception {
        robot = new Robot("Robbie","Silver", 10);

    }

    @Test
    public void getname() throws Exception {

    }

    @Test
    public  void testHoovering(){
        robot.hoover();
        Log.d("Reduce Battery Level", String.valueOf(robot.getBatteryLevel()));
        assertEquals(90, robot.getBatteryLevel());
    }
}
