public class BigO{

  public static boolean linearSearchForNumber(int[] numbers, int numToFind){
    int midIndex = numbers.length /2;
    int midNumber = numbers[midIndex];
    int[] temp = new int[midIndex];

    if (numToFind == midNumber){
      return true;
    };

    if(numToFind < midNumber){
      for (int i = 0; i < midIndex; i++){
        temp[i] = numbers[i];
      }
    } else {
      for (int i = midIndex + 1; i < numbers.length; i++){
        temp[i - (midIndex + 1)] = numbers[i];
      }
    }

    return linearSearchForNumber(temp, numToFind);
  }

  public static void main(String[] args) {

    int[] numbers = {1, 3, 7, 8, 9, 21, 23, 45, 56};
    System.out.println(linearSearchForNumber(numbers, 45));
  }
}