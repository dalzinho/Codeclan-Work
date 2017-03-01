package com.codeclan.example.eightball;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

import java.io.InputStream;

public class EightBallActivity extends AppCompatActivity {

    EditText questionEditText;
    Button shakeButton;
    TextFileAnswers thingy;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_eight_ball);

        questionEditText = (EditText) findViewById(R.id.question_edit_text);
        shakeButton = (Button) findViewById(R.id.shake_btn);

        InputStream input = getResources().openRawResource(R.raw.answers);
        thingy = new TextFileAnswers(input);

    }

    public void onShakeButtonClicked(View button){
//        answerText.setText(thingy.getAnswer());
        String answer = thingy.getAnswer();
        Intent intent = new Intent(EightBallActivity.this, AnswerActivity.class);

        intent.putExtra("key_answer", answer);
        startActivity(intent);

    }

    public void onWebsiteButtonClicked(View button){
        String url = "http://www.codeclan.com";
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));

        startActivity(intent);
    }




}
