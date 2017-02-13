import java.util.ArrayList;

public class Bear{
  private String name;
  private ArrayList<Salmon> belly;

  public Bear(String name){
    this.name = name;
    this.belly = new ArrayList<Salmon>();
  }

  public String getName() {
    return this.name;
  }

  public int foodCount() {
    return belly.size();
  }

  public void eat(Salmon salmon) {
    belly.add(salmon);
  }

  public void goToWoods() {
    belly.clear();
  }

  public void remove(Salmon salmon) {
    for(Salmon jam : this.belly) {
      if (jam.getName() == salmon.getName()) {
        System.out.println("The name of the fish is " + jam.getName());
        belly.remove(jam);
        // System.out.print(belly);
      }
    }
  }
}