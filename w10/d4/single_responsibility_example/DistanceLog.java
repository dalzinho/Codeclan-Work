class DistanceLog{
  private int totalDistance;

  public DistanceLog(){
    this.totalDistance = 0;
  }

  public void write(int distance){
    totalDistance += distance;
    String thisRun = "This run was "+distance+" meters";
    String totalRun = "I have ran "+totalDistance+" meters in total";
    System.out.println(thisRun);
    System.out.println(totalRun);
  }

}