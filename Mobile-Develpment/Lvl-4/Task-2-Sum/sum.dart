import 'dart:io';

void main() {
  stdout.write("Enter the first number: ");
  var num1 = stdin.readLineSync();

  stdout.write("Enter the second number: ");
  var num2 = stdin.readLineSync();

  var sum = (int.parse(num1!) + int.parse(num2!));

  print("The Sum of " + num1 + " and " + num2 + " is: $sum");
}
