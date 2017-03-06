package com.codeclan.example.listviewexample;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import java.util.List;

public class MainActivity extends AppCompatActivity implements AdapterView.OnItemClickListener {

    ListView names_lv;
    String[] names = {"John", "Colin", "John", "Steve", "Michaela", "Alastair", "Chris", "John", "Colin", "John", "Steve", "Michaela", "Alastair", "Chris"};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        names_lv = (ListView)findViewById(R.id.names_lv);



        ArrayAdapter<String> namesAdapter = new ArrayAdapter<String>(
                this,
                android.R.layout.simple_list_item_1,
                names);

        names_lv.setAdapter(namesAdapter);
        names_lv.setOnItemClickListener(this);
    }


    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        String name = names[position];
        String toastText = "The name " + name + " was clicked.";
        Toast.makeText(this, toastText, Toast.LENGTH_SHORT).show();
    }
}
