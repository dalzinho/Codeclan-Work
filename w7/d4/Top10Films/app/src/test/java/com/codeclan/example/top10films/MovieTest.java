package com.codeclan.example.top10films;

import org.junit.Before;
import org.junit.Test;

import static junit.framework.Assert.assertEquals;

/**
 * Created by user on 23/02/2017.
 */

public class MovieTest {

    private Movie movie1;

    @Before
    public void before(){
        movie1 = new Movie("Stachka!", "Historical");
    }

    @Test
    public void returnsMovieAsString(){
        assertEquals("Title: Stachka! | Genre: Historical | Ranking: 1", movie1.toString());
    }
}
