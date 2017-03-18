public class ThreadExample implements Runnable {

  private int i;
  public volatile boolean timeToQuite = false;

  @Override
  public void run(){ //the method you want to run on a new thread lives here
    while(!Thread.interrupted()){
      for(i = 0; i < 100; i++){
        System.out.println(i);
      }
    }
  }
}