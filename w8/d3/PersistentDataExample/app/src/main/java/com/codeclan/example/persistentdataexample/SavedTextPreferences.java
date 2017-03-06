package com.codeclan.example.persistentdataexample;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.Preference;
import android.preference.PreferenceManager;

/**
 * Created by user on 01/03/2017.
 */

public class SavedTextPreferences {

    private static final String PREF_SAVEDTEXT = "savedText";

    public static void setStoredText(Context context, String text){

        //this is commented out, but is a more verbose way of doing the method below; has advantage that it will return a more specific error message if you get it wrong.
//        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
//        SharedPreferences.Editor editor = sharedPreferences.edit();
//
//        editor.putString(PREF_SAVEDTEXT, text);
//        editor.apply();

        PreferenceManager.getDefaultSharedPreferences(context)
                .edit()
                .putString(PREF_SAVEDTEXT, text)
                .apply();
    }

    public static String getStoredText(Context context){
//        SharedPreferences sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
//        return sharedPreferences.getString(PREF_SAVEDTEXT, null);

        return PreferenceManager.getDefaultSharedPreferences(context)
                .getString(PREF_SAVEDTEXT, null);


    }
}
