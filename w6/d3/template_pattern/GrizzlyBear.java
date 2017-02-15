public class GrizzlyBear extends Bear {

  public void gatherFood() {
    System.out.println("Off to Morrisons");
  }

  @Override
  public void wakeUp() {
    System.out.println("Grunts. Smashes alarm");
  }
}