void main(){
  String word1 = "abcd";
  String word2 = "bcda";

  //String word1 = "rotation";
  //String word2 = "tationro";

  //call function for rotation
  isRotation(word1, word2);
}

void isRotation(String word1, String word2){
  //initialize words to get the length ignoring the spaces, special characters, and should be lowercase
  //if the first word has uppercase
  int len1 = word1.length;
  int len2 = word2.length;

  //check if lengths are different
  if (len1 != len2){
    print("The given strings are not rotations of each other.");
    return;
  }

  //check rotation
  for (int rotation = 0; rotation < len1; rotation++){
    //initialized isRotation to true for looping
    bool isRotation = true;

    //compare each character
    for (int i = 0; i < len1; i++){
      //check if the character is the same as the length of the character
      //temp is the rotated char index [clarification from presentation]
      int temp = (i + rotation) % len1;
      //check for each character in word1 and word 2
      //if not the same
      if (word1[temp] != word2[i]){
        //update tracker
        isRotation = false;
        break;
      }
    }

    //if it's the rotation of the other then print
    if (isRotation){
      print("The given strings are rotations of each other.");
      return;
    }
  }

  //if not
  print("The given strings are not rotations of each other.");
}