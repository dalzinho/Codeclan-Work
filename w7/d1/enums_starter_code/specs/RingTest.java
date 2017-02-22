import static org.junit.Assert.*;
import org.junit.*;
import jewellery.*;

public class RingTest {

  Ring ring;
  
  @Before 
  public void before(){
    ring = new Ring(MetalType.GOLD, GemType.ONYX);
  }

  @Test
  public void canGetMetal(){
    assertEquals(MetalType.GOLD, ring.getMetal());
  }

  @Test
  public void canGetGem(){
    assertEquals(GemType.ONYX, ring.getGem());
  }

  // @Test
  // public void canMisspellMetal(){
  //   ring = new Ring("Golllld");
  //   assertEquals("Golllld", ring.getMetal());
  // }

  // @Test
  // public void canBeBanana(){
  //   ring = new Ring("Banana");
  //   assertEquals("Banana", ring.getMetal());
  // }

}