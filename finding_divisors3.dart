import "dart:io";

void main() {
  stdout.write("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);
  List<int> divisorList = [];
  int count = 0;

  if (number > 0) {
    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        divisorList.add(i);
        count += 1;
      }
    }
    print(divisorList);
    print("The total number of divisors of $number is: $count");
  } else {
    print("Please enter a valid positive number");
  }
}
