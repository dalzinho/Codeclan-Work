class Pda {
  public boolean func1(int val){
   return (val == 1);
  }

  public int max(int a, int b){
    if(a > b){
      return a;
    }else{
      return b;
    }
  }

  public int looper(){
    int i = 0;
    while(i <= 10){
      i++;
    }
      return i;

  } 

  public String checkLoop(){
    // int looper = looper();
  if (looper() == 10){
    return "looper passed";
  }
  else{
    return "looper failed";
  }
  
}
}
