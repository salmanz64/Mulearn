import 'dart:io';

void main() {
  stdout.write("Enter Your number: ");
  var num = int.parse(stdin.readLineSync()!);
  int sum = 0;

  print("\nThe Table is: \n");
  for (int i = 1; i <= 10; i++) {
    print("$i * $num = ${num * i}");
    sum += num * i;
  }
  print("\nThe total Sum generated is: $sum");
}
