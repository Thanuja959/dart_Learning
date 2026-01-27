/* Create a program that asks the user to enter their name and their age. 
Print out a message that tells how many years they have to be 100 years old. */

import "dart:io"; //the library allow us to take input and gives output to user

void main() {
  stdout.write(
    "Hello! May I know your name please?",
  ); // this lines takes input in same line
  String? name = stdin.readLineSync();

  print("Nice to meet You, $name !. Can I have Your Age too ?");
  int age = int.parse(stdin.readLineSync()!);
  var Emoji = String.fromCharCode(0x1F600);
  print("So..! You Are ${100-age} years away from being 100 years old $Emoji..!!!");
}
