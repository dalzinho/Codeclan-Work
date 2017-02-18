public class Word {

  public String word;
  private StringBuilder hiddenWord;

  public Word(String word) {
    this.word = word;
  }

  public String hide() {
    hiddenWord = new StringBuilder();
    for (char character : word.toCharArray()){
      hiddenWord.append("*");
    }

    return hiddenWord.toString();
  }
}