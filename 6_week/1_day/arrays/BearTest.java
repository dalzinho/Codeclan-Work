import static org.junit.Assert.assertEquals;
import org.junit.Test;
import org.junit.Before;

public class BearTest{
  Bear bear;
  Salmon salmon;
  Salmon nemo;
  Salmon dory;
  Salmon flipper;

  @Before 
  public void before() {
    bear = new Bear("Baloo");
    salmon = new Salmon("John");
    nemo = new Salmon("Nemo");
    dory = new Salmon("Dory");
    flipper = new Salmon("Flipper");
  }

  @Test
  public void hasName(){
    assertEquals("Baloo", bear.getName()); 
  }

  @Test
  public void checkEmptyBelly() {
    assertEquals(0, bear.foodCount());
  }

  @Test
  public void testEat() {
    bear.eat(salmon);
    assertEquals(1, bear.foodCount());
  }

  @Test
  public void testInTheWoods () {
    bear.eat(salmon);
    bear.goToWoods();
    assertEquals(0, bear.foodCount());
  }

  @Test
  public void testEatMore() {
    for(int i=0; i <= 9; i++){
      bear.eat(salmon);
    }
    assertEquals(10, bear.foodCount());
  }

  @Test
  public void testRemoveDory() {
    bear.eat(nemo);
    bear.eat(dory);
    bear.eat(flipper);
    bear.remove(flipper);
    assertEquals(2, bear.foodCount());
  }
}
