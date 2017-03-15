import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.Test;

public class TestPda{

  Pda pda;

  @Before
  public void before(){
    pda = new Pda();
  }

  @Test
  public void testFunc1ReturnsTrueIfOneFalseIfTwo(){
    assertEquals(true, pda.func1(1));
    assertEquals(false, pda.func1(2));
  }

  @Test
  public void testMaxReturnsAWhenAGreater(){
    assertEquals(2, pda.max(2,1));
  }

  @Test
  public void testMaxReturnsBWhenBGreater(){
    assertEquals(2, pda.max(1,2));
  }

  @Test void testReturnIfAandBEqual(){
    assertEquals(null, pda.max(1,1));
  }

  @Test
  public void testLooperReturnsTen(){
    assertEquals(10, pda.looper());
  }

  @Test
  public void testCheckLoopReturnsFailedWhenLooperRun(){
    assertEquals("looper passed", pda.checkLoop());
  }

}