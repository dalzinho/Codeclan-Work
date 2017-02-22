import java.util.*;

public class CountryInfo{

  public static void main(String[] args) {

    ArrayList<String> al = new ArrayList<String>();
    HashMap<String, Integer> countries = new HashMap<String, Integer>();

    countries.put("UK", 64_100_000);
    countries.put("Germany", 80_620_000);
    countries.put("France", 66_030_000);
    countries.put("Japan", 127_300_000);

    for(String country : countries.keySet()){
      al.add(country);
    }

    Collections.sort(al);

    for(String country : al){
      System.out.println("The population of " + country + " is " + countries.get(country) + ".");
    }
  }
}