import java.util.ArrayList;

public class Bear{

  private Diary journal;
  
  public Bear(){
    this.journal = new Diary();

  }

  public Diary getJournal(){
    return this.journal;
  }

  public void writeJournal(String text){
    this.journal.write(text);
  }

}