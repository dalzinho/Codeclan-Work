public class Runner {
  public static void main(String[] args) {
    Bear bear = new PolarBear();
    bear.typicalDay();
    System.out.println("");
    Bear grizzly = new GrizzlyBear();
    grizzly.typicalDay();
  }
}