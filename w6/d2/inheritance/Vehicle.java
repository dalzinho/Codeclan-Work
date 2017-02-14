class Vehicle {
  int numWheels;

  public Vehicle(int numWheels){
    this.numWheels = numWheels;
  }

  public int getNumWheels(){
    return this.numWheels;
  }

  public String startEngine(){
    return "Vrrm!";
  }

  public String soundHorn(){
    return "Beep!";
  }
}