package com.codeclan.example.eightball;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class AnswerActivity extends AppCompatActivity {

    TextView answerTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_answer);

        answerTextView = (TextView)findViewById(R.id.answer_text);

        Intent intent = getIntent();
        //how does this page deal with more than one page linking to it?!
        Bundle extras = intent.getExtras();
        String answer = extras.getString("key_answer");

        answerTextView.setText(answer);

    }
}
