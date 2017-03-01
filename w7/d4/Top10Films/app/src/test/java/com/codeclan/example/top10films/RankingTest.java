package com.codeclan.example.top10films;

import org.junit.Before;
import org.junit.Test;

import static junit.framework.Assert.assertEquals;

/**
 * Created by user on 23/02/2017.
 */

public class RankingTest {

    Ranking ranking;
    Movie testMovie;

    @Before
    public void before() {

        ranking = new Ranking();

        Movie movie1 = new Movie("Oktyabr'", "Historical", 1);
        Movie movie2 = new Movie("Stachka!", "Historical", 2);
        Movie movie3 = new Movie("Bronenosets Potemkin", "Historical", 3);
        Movie movie4 = new Movie("Ivan Grozny, 2-ya Seriya", "Historical", 4);
        Movie movie5 = new Movie("¡Qué viva México!", "Historical", 5);
        Movie movie6 = new Movie("Staroe i novoe", "Historical", 6);
        Movie movie7 = new Movie("Ivan Grozny, 1-ya Seriya", "Historical", 7);
        Movie movie8 = new Movie("Bezhin Lug", "Historical", 8);
        Movie movie9 = new Movie("Romance Sentimentale", "Historical", 9);
        Movie movie10 = new Movie("Aleksandr Nevskiy", "Historical", 10);




        Movie testMovie = new Movie("El desastre en Oaxaca", "Historical", 4);

        Movie[] movies = {movie1, movie2, movie3, movie4, movie5, movie6, movie7, movie8, movie9, movie10};
        for (Movie movie : movies){
            ranking.add(movie);
        }

    }

    @Test
    public void canAddMovieToRankingList() {
        ranking.add(testMovie);
    }

    @Test
    public void canGetMovieByRank(){
        Movie movie = ranking.getByRank(1);
        assertEquals("Oktyabr'", movie.getTitle());
    }


}
