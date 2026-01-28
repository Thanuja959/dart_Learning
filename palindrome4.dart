import "dart:io";

void main() {
  print("Enter a String, Let's Check if it's a Palindrome:");
  String Word = (stdin.readLineSync()!).toLowerCase();
  var reverseWord = Word.split("").reversed.join("");
  if(Word == reverseWord){
    print("The Given String is a Palindrome");
  } else {
    print("The Given String is not a Palindrome");
  }
}

/* or to be very particular with emojies to check with runes

  void main() {
  String text = "Dart🔥";

  String reversed =
      String.fromCharCodes(text.runes.toList().reversed);

  print(reversed);
}
  can check later palindrome with this reversed runes code
*/