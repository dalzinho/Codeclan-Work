package com.codeclan.example.top10films;

/**
 * Created by user on 23/02/2017.
 */

public class Movie {

    //instance variable
    String title;
    String genre;
    int currentRanking;

    //constructor
    public Movie(String title, String genre, int rank){
        this.title = title;
        this.genre = genre;
        this.currentRanking = rank;
    }

    //setters und getters

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getCurrentRanking() {
        return currentRanking;
    }

    public void setCurrentRanking(int currentRanking) {
        this.currentRanking = currentRanking;
    }

    @Override
    public String toString(){
        String newString = String.format("Title: %s | Genre: %s | Ranking: %d", this.title, this.genre, this.currentRanking);
        return newString;
    }
}
