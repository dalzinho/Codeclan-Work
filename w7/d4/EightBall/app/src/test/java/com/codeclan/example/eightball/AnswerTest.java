package com.codeclan.example.eightball;

import org.junit.Test;
import org.junit.Before;
import org.mockito.Mockito;

import java.util.ArrayList;
import static org.junit.Assert.*;

import static org.mockito.Mockito.*;

/**
 * Created by user on 23/02/2017.
 */

public class AnswerTest {

    private Answer eightball;
    private Answer spyEightball;
    private ArrayList<String> answers;

    @Before
    public void before(){
       answers = new ArrayList<String>();
        answers.add("Do something sudden, destructive and unpredictable");
        answers.add("The most important thing is the thing most easily forgotten");

        eightball = new Answer(answers);
        spyEightball = Mockito.spy(eightball);
    }

    @Test
    public void canReturnAllAnswers(){
        assertNotNull(eightball.getAnswers());
        ArrayList<String> test = eightball.getAnswers();
        assertEquals(2, test.size());
    }

    @Test
    public void testGetAnswer(){
        assertEquals("Do something sudden, destructive and unpredictable", eightball.getAnswerAtIndex(0));
    }

    @Test
    public void testRandomAnswer(){
        assertTrue(answers.contains(eightball.getAnswer()));
    }

    @Test
    public void testAddAnswerToList(){
        int originalLength = eightball.getLength();
        eightball.addAnswer("Use filters");
        assertEquals(originalLength + 1, eightball.getLength());
    }

    @Test
    public void testDefaultAnswersExist(){
        Answer testBall = new Answer();
        assertNotNull(testBall.getAnswers());
    }
}
