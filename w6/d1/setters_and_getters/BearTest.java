import static org.junit.Assert.assertEquals;
import org.junit.Test;
import org.junit.Before;

public class BearTest {

  Bear bear;

  @Before
  public void before() {
    bear = new Bear("Baloo", 9, 95.62, 1.20);
  }

  @Test
  public void hasName() {
    assertEquals("Baloo", bear.getName());
  }

  @Test
  public void hasAge() {
    assertEquals(9, bear.getAge());
  }

  @Test
  public void hasWeight() {
    assertEquals(95.62, bear.getWeight(), 0.01);
  }

  @Test
  public void hasBMI() {
    Bear bmiTestBear = new Bear("BMI", 1, 12, 2);
    assertEquals(3, bmiTestBear.getBMI(), 0);

  }

  @Test
  public void readyToHibernateIfGreaterThan30() {
    assertEquals(true, bear.readyToHibernate());
  }

  @Test 
  public void notReadyToHibernateIfLessThan30() {
    Bear littleBear = new Bear("Tiny", 1, 30, 2);
    assertEquals(false, littleBear.readyToHibernate());
  }

}