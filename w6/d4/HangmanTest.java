import org.junit.Test;
import org.junit.Before;
import static org.junit.Assert.assertEquals;

public class HangmanTest {

  String word;

  @Before
  public void setup() {
    word = new String("john");
  }

  @Test
  public void canReturnWordAsArray(){
    assertEquals(['j','o','h','n'], Hangman.makeArray(word));
  }
}