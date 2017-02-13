import static org.junit.Assert.assertEquals;
import org.junit.Test;
import org.junit.Before;

public class BearTest{
  Bear bear;
  Salmon salmon;

  @Before 
  public void before() {
    bear = new Bear("Baloo");
    salmon = new Salmon();
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
}
