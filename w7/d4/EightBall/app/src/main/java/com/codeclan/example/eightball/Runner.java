package com.codeclan.example.eightball;

import java.util.Scanner;

/**
 * Created by user on 23/02/2017.
 */

public class Runner {

    public static void main(String[] args) {
        boolean shouldIRun = true;
        while (shouldIRun) {
            Scanner sc = new Scanner(System.in);
            Answer eightball = new Answer();
            System.out.println("Ask a question, human.");
            String question = sc.nextLine();
            if (question.equals("q")){
                shouldIRun = false;
            }
            else {
                System.out.println();
                System.out.println(eightball.getAnswer());
            }
        }
    }


}

