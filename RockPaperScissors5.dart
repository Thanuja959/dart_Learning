import "dart:io";
import "dart:math";

void main() {
  // rules for this game
  var rules = {"rock": "scissors", "paper": "rock", "scissors": "paper"};
  final random = Random();
  var options = ["rock", "paper", "scissors"];
  // InitialScores
  int userScore = 0;
  int ComputerScore = 0;

  print(
    "Welcome to Rock, Paper, Scissors Game!\n type 'exit' to quit the game.",
  );

  while (true) {
    var computerChoice = options[random.nextInt(options.length)];
    stdout.write("Enter your choice (rock, paper, scissors): ");
    var userChoice = (stdin.readLineSync()!).toLowerCase();

    if (userChoice == "exit") {
      print(
        "Your score : $userScore, Computer score : $ComputerScore\nThanks for playing! Bye Bye!",
      );
      break;
    } else if (!options.contains(userChoice)) {
      print("Invalid choice. Please try again.");
      continue;
    } else if (rules[userChoice] == computerChoice) {
      userScore++;
      print("You win! $userChoice beats $computerChoice.");
    }else {
      print("Computer wins! $computerChoice beats $userChoice.");
      ComputerScore++;
    }
  }
}
