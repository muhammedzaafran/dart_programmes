import 'dart:io';

void main() {
  String? numberString = stdin.readLineSync() ;

  int number = int.parse('numberString');
  int factorial = 1;
  for (int i = 2; i <= number; i++) {
    factorial *= i;
  }
  print("The factorial of $number is $factorial");
}
