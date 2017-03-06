package com.codeclan.example.miditest;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;

import org.billthefarmer.mididriver.MidiDriver;

public class MainActivity extends AppCompatActivity implements MidiDriver.OnMidiStartListener,
        View.OnTouchListener {

    private MidiDriver midiDriver;
    private byte[] bassRoot;
    private byte[] third;
    private byte[] fifth;
    private byte[] topNote;
    private int[] config;
    private Button buttonPlayNote;
    private Integer thingy;
    private Integer velocity;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        buttonPlayNote = (Button)findViewById(R.id.buttonPlayNote);
        buttonPlayNote.setOnTouchListener(this);

        midiDriver = new MidiDriver();
        midiDriver.setOnMidiStartListener(this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        midiDriver.start();

        config = midiDriver.config();

        Log.d(this.getClass().getName(), "maxVoices: " + config[0]);
        Log.d(this.getClass().getName(), "numChannels: " + config[1]);
        Log.d(this.getClass().getName(), "sampleRate: " + config[2]);
        Log.d(this.getClass().getName(), "mixBufferSize: " + config[3]);
    }

    @Override
    protected void onPause() {
        super.onPause();
        midiDriver.stop();
    }

    @Override
    public void onMidiStart() {
        Log.d(this.getClass().getName(), "onMidiStart()");
    }

    private void playNote() {

        velocity = 127;
        thingy = 80;
        bassRoot = new byte[3];
        bassRoot[0] = (byte) (0x90 | 0x00);
        bassRoot[1] = thingy.byteValue();  //this byteValue business takes the note int and converts it so i don't have to
        bassRoot[2] = velocity.byteValue();

        third = new byte[3];
        third[0] = (byte) (0x90 | 0x00);
        third[1] = (byte) 0x40;
        third[2] = velocity.byteValue();

        fifth = new byte[3];
        fifth[0] = (byte) (0x90 | 0x00);
        fifth[1] = (byte) 0x43;
        fifth[2] = velocity.byteValue();

        topNote = new byte[3];
        topNote[0] = (byte) (0x90 | 0x00);
        topNote[1] = (byte) 0x46;
        topNote[2] = velocity.byteValue();

         // Internally this just calls write() and can be considered obsoleted:
        //midiDriver.queueEvent(event);

        // Send the MIDI event to the synthesizer.
        midiDriver.write(bassRoot);
        midiDriver.write(third);
        midiDriver.write(fifth);
        midiDriver.write(topNote);



    }

    private void stopNote() {

//        bassRoot = new byte[3];
//        bassRoot[0] = (byte) (0x90 | 0x00);  // 0x90 = note On, 0x00 = channel 1
//        bassRoot[1] = (byte) 0x24;  // 0x3C = middle C
//        bassRoot[2] = (byte) 0x00;  // 0x7F = the maximum velocity (127)
//
//        third = new byte[3];
//        third[0] = (byte) (0x90 | 0x00);
//        third[1] = (byte) 0x40;
//        third[2] = (byte) 0x00;
//
//        fifth = new byte[3];
//        fifth[0] = (byte) (0x90 | 0x00);
//        fifth[1] = (byte) 0x43;
//        fifth[2] = (byte) 0x00;
//
//        topNote = new byte[3];
//        topNote[0] = (byte) (0x90 | 0x00);
//        topNote[1] = (byte) 0x48;
//        topNote[2] = (byte) 0x00;
//
//        midiDriver.write(bassRoot);
//        midiDriver.write(third);
//        midiDriver.write(fifth);
//        midiDriver.write(topNote);


    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {

        Log.d(this.getClass().getName(), "Motion event: " + event);

        if (v.getId() == R.id.buttonPlayNote) {
            if (event.getAction() == MotionEvent.ACTION_DOWN) {
                Log.d(this.getClass().getName(), "MotionEvent.ACTION_DOWN");
                playNote();
            }
            if (event.getAction() == MotionEvent.ACTION_UP) {
                Log.d(this.getClass().getName(), "MotionEvent.ACTION_UP");
                stopNote();
            }
        }

        return false;
    }
}