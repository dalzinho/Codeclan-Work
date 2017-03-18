class Main {
  public static void main(String[] args){
    DistanceLog  distanceLog = new DistanceLog();
    Athlete athlete = new Athlete(distanceLog);
    athlete.run(10);
    athlete.run(2);
    athlete.run(1000);
    athlete.run(1_000_000);
    athlete.run(723647824);
  }
}