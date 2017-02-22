import static org.junit.Assert.*;
import org.junit.*;
import org.mockito.*;
import static org.mockito.Mockito.*;

public class GameTest {

  Game game;
  Rollable spyDice;
  Rollable dice;
  
  @Before 
  public void before(){
    dice = new Dice(6);
    spyDice = Mockito.spy(dice);
    game = new Game(spyDice);
  }

  @Test
  public void testTakeTurnFailureStub(){
    when(spyDice.roll()).thenReturn(1);

    boolean result = game.nextTurn();
    assertEquals(false, result);
  }

  @Test
  public void testTakeTurnVictoryStud() {
    when(spyDice.roll()).thenReturn(1000000);

    boolean result = game.nextTurn();
    assertEquals(true, result);
  }

  @Test
  public void takeTurnMock(){
    Rollable diceMock = mock(Rollable.class);
    game = new Game(diceMock);

    game.nextTurn();

    assertEquals(1, game.getTurnCount());
    verify(diceMock, times(1)).roll();
  }

  // @Test
  // public void testTakeTurn(){
  //   boolean result = game.nextTurn();
  //   assertEquals(true, result);
  // }
  
}
