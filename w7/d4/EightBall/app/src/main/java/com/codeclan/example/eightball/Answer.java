package com.codeclan.example.eightball;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Random;

/**
 * Created by user on 23/02/2017.
 */

public class Answer implements Answerable {

    //instance variables
    private ArrayList<String> answers;

    //constructor
    public Answer(){
        answers = new ArrayList<String>();
        setUpAnswers();
    }

    //methods

    public Answer(ArrayList<String> answers){
    this.answers = new ArrayList<String>(answers);
    }

    public ArrayList<String> getAnswers(){
        return new ArrayList<String>(answers);
    }

    public int getLength(){
        return answers.size();
    }

    public String getAnswerAtIndex(int index){
        return answers.get(index);
    }

    public String getAnswer(){
        Random rand = new Random();
        int listSize = getLength();
        int index = rand.nextInt(listSize );
        String response = getAnswerAtIndex(index);
        return response;
    }

    public void addAnswer(String enteredAnswer){
        this.answers.add(enteredAnswer);
    }

    private void setUpAnswers(){

        String[] answersToAdd = {"What else is this like", "Feed the recording back out of the medium", "List the qualities it has. List those you'd like"};

      for(String answer : answersToAdd){
          addAnswer(answer);
      }
    }

}
