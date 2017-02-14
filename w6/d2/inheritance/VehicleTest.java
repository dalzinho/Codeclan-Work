import static org.junit.Assert.assertEquals;
import org.junit.Test;
import org.junit.Before;

public class VehicleTest {
  Car car;
  Motorbike motorbike;
  ElectricCar tesla;


  @Before
  public void before(){
    car = new Car(4);
    motorbike = new Motorbike(2);
    tesla = new ElectricCar(4);

  }

  @Test
  public void testCarHasFourWheels(){
    assertEquals(4, car.getNumWheels());
  }

  @Test
  public void testMotorbikeHasTwoWheels(){
    assertEquals(2, motorbike.getNumWheels());
  }

  @Test
  public void carEngineStarts(){
    assertEquals("Vrrm! I'm a car!", car.startEngine());
  }

  @Test
  public void electricCarEngineStarts(){
    assertEquals("Vrrm! I'm a car!", tesla.startEngine());
  }

  @Test
  public void electricCarCanSoundHorn(){
    assertEquals("Beep!", tesla.soundHorn());
  }
}