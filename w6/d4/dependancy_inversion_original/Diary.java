import java.util.ArrayList;

public class Diary{


  private ArrayList<String> journalEntries;

  public Diary(){
    journalEntries = new ArrayList<String>();
  }

  public void write(String text){
    this.journalEntries.add(text);
  }

  public String readLast(){
    return journalEntries.get(journalEntries.size() - 1);
  }
}