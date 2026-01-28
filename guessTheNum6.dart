import "dart:io";
import "dart:math";

void main() {
  final random = Random();
  int attempts = 0;
  int number = random.nextInt(101);
  print(number);

  print("hey Guess a number berween 0 to 101:");

  while (true) {
    stdout.write("Enter your guess: ");
    var input = (stdin.readLineSync()!).trim();
    
    attempts++;
    
    if (input.toLowerCase() == "exit") {
       print("You exited the game. The number was $number.");
      break;
    }
    
    var userGuess = int.tryParse(input);
    
    if (userGuess == null) {
      print("Please enter a valid number.");
      continue;
    }

    else if (userGuess > 100 || userGuess < 0) {
      print("Please enter a number between 0 to 100");
      continue;
    } 
    
     else if (userGuess > number) {
      print("Too High! Try again.");
      continue;
    }
    
     else if (userGuess < number) {
      print("Too Low! Try again.");
      continue;
    }
    
     else {
      print(
        "Congratulations! You've guessed the number $number in $attempts attempts.",
      );
      break;
    }
  }
}
