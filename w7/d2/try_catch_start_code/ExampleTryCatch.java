public class ExampleTryCatch{
  PetShop shop;

  public void run(){
    setup();
    Pet found = null;

   
    try {
   found = shop.findPetByName("Rover");
   }  
   catch (NullStringException e) {
      // e.printStackTrace();
      System.out.println("Exception Message:");
      System.out.println(e.getMessage());
    }
    finally {
      System.out.println("and finally......");
    }
    System.out.println("Found pet: " + found.getName());
  }

  


  public void setup(){
    shop = new PetShop();
    shop.addPet(new Dog("Rover"));
    shop.addPet(new Cat("MEOWingtons"));
    shop.addPet(new Fish("FINlay"));
  }
}
