import "dart:io";

void main() {
  stdout.write("Enter a String, Let's Check if it's a Prime or Not:");
  var choosenNumber = int.parse(stdin.readLineSync()!);

  checkPrime(choosenNumber);
}

void checkPrime(int num) {
  var primes = [];
  for (var i = 2; i < num; i++) {
    if (num % i == 0) {
      primes.add(i);
    }
  }
  if (primes.isEmpty) {
    print("The Given Number is a Prime Number");
  } else {
    print("The Given Number is not a Prime Number");
  }
}  //// Doesn't handle negative numbers and 0,1 cases yet etc..
