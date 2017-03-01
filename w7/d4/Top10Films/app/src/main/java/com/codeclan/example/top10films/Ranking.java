package com.codeclan.example.top10films;

import java.util.ArrayList;

/**
 * Created by user on 23/02/2017.
 */

public class Ranking {

    //instance variables
    ArrayList<Movie> movieRank;

    //constructors
    public Ranking(){

        movieRank = new ArrayList<Movie>();

    }

    public void add(Movie movie){
        movieRank.add(movie);
    }

    public Movie getByRank(int searchRank){
        Movie result = null;
        for (Movie movie : movieRank) {
            if (movie.getCurrentRanking() == searchRank) {
                result = movie;
            }
        }
        return result;


        }
    }

