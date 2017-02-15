public abstract class Bear {

  public abstract void gatherFood();

  public void roar(){
    System.out.println("roar!");
  }

  public void wakeUp(){
    System.out.println("waking up");
  }

  public void eat(){
    System.out.println("eating");
  }

  public void sleep() {
    System.out.println("going to sleep");
  }

  public void typicalDay() {
    wakeUp();
    gatherFood();
    roar();
    eat();
    sleep();
  }
  
}