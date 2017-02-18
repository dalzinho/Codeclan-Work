import java.util.ArrayList;

public class Bear{

  private Diary journal;

  public Diary getJournal(){
    return this.journal;
  }

  public void setJournal(Diary diary){
    this.journal = diary;
  }

  public void writeJournal(String text){
    this.journal.write(text);
  }

  public String readJournal(){
    return this.journal.readLast();
  }

}