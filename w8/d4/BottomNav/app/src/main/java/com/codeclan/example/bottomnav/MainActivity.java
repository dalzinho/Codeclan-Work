package com.codeclan.example.bottomnav;

import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity implements BottomNavigationView.OnNavigationItemSelectedListener {

    BottomNavigationView bottomNav;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        bottomNav = (BottomNavigationView) findViewById(R.id.bottom_nav);

        bottomNav.setOnNavigationItemSelectedListener(this);
    }

    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem item) {

        String toastText = null;

        switch (item.getItemId()) {
            case R.id.friends:
                toastText = "You clicked Friends!";
                break;
            case R.id.music:
                toastText = "You clicked Music!";
                break;
            case R.id.jam:
                toastText = "This is stupid!";
                break;
        }

        Toast.makeText(this, toastText, Toast.LENGTH_SHORT).show();
        return true;
    }
}
