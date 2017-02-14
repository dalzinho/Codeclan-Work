import static org.junit.Assert.assertEquals;
import org.junit.Test;
import org.junit.Before;

public class MammalTest {
  Mammal mammal;
  Human human;
  Chimpanzee chimp;


  @Before
  public void before(){
    mammal = new Mammal();
    human = new Human();
    chimp = new Chimpanzee();
  }

  @Test
  public void mammalCanEat(){
    assertEquals("The beast shovels food into its beastly maw.", mammal.eat());
  }

  @Test
  public void mammalCanBreath(){
    assertEquals("The creature inhales and exhales.", mammal.breathe());
  }

  @Test
  public void mammalCanBrushHair(){
    assertEquals("Using its filthy hands, the beast brushes its fur.", mammal.brushHair());
  }

  @Test
  public void humanCanBrushHair(){
    assertEquals("Using its filthy hands, the beast brushes its fur.", human.brushHair());
  }

  @Test
  public void humanCanTalk(){
    assertEquals("The hairless ape mumbles something about economics.", human.speak());
  }

  @Test
  public void chimpanzeeCanTalk(){
    assertEquals("RRRRRRKKKKKK", chimp.speak());
  }

  @Test
  public void chimpanzeeCanEat(){
    assertEquals("The beast shovels food into its beastly maw.", chimp.eat());
  }

  @Test
  public void humanCanBreathe(){
    assertEquals("The creature inhales and exhales.", human.breathe());
  }
}