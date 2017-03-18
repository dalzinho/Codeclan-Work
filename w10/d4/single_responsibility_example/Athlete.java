public class Athlete {

  private DistanceLog distanceLog;

  public Athlete(DistanceLog distanceLog){
    this.distanceLog = distanceLog;
  }

  public void run(int distance){
    distanceLog.write(distance);
  }


}