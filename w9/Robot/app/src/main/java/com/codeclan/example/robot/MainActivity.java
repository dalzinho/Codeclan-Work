package com.codeclan.example.robot;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Robot robot = new Robot("Data", "Positronic Network", 32);
        robot.hoover();
        Log.d("Robot Tag", String.valueOf(robot.getBatteryLevel()));

    }
}
