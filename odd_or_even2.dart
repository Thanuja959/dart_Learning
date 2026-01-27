// this file has odd or even and positive or negative number check
import "dart:io";

void main() {
  stdout.write("Enter A Number:");
  int number = int.parse(stdin.readLineSync()!);

  if (number.isEven) {
    print("$number is Even Number");
  } else {
    print("$number is Odd Number");
  }
  positive(a);
}
  var a = -21;
void positive(int a) {
 
  if (a > 0) {
    print("Positive Number");
  } else if (a < 0) {
    print("Negative Number");
  } else {
    print("Zero");
  }
}
