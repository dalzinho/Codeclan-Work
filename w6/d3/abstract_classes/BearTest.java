import static org.junit.Assert.assertEquals;
import org.junit.*;

public class BearTest {

  PolarBear polarBear;
  GrizzlyBear grizzlyBear;

  @Before 
  public void before() {
    polarBear = new PolarBear();
    grizzlyBear = new GrizzlyBear();
  }

  @Test
  public void polarCanGatherFood(){
    assertEquals("Gathering Food: breaking the ice", polarBear.gatherFood());
  }

  @Test
  public void grizzlyCanGatherFood() {
    assertEquals("Gathering Food: fishing in the river", grizzlyBear.gatherFood());
  }

  @Test
  public void canHibernate(){
    assertEquals("Finding a nice cave in which to sleep", grizzlyBear.hibernate());
    assertEquals("Finding a nice igloo in which to sleep", polarBear.hibernate());
  }

}