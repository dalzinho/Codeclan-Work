public class GrizzlyBear extends Bear {

  public String gatherFood() {
    return super.gatherFood() + "fishing in the river";
  }

  public String hibernate(){
    return "Finding a nice cave in which to sleep";
  }

}