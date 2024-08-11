import 'dart:io';

main() {
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your phone number: ");
  String? num = stdin.readLineSync();

  stdout.write("Enter your Age: ");
  String? age = stdin.readLineSync();

  stdout.write("Enter your Height: ");
  String? height = stdin.readLineSync();

  stdout.write("Enter your Weight: ");
  String? weight = stdin.readLineSync();

  stdout.write("Enter your Address: ");
  String? address = stdin.readLineSync();

  stdout.write("Enter your Hobbies: ");
  String? hobbies = stdin.readLineSync();

  print("\nBIO DATA");
  print("-------------------");
  print("Name: $name");
  print("Phone number: $num");
  print("Age: $age");
  print("Height: $height");
  print("Weight: $weight");
  print("Address: $address");
  print("Hobbies: $hobbies");
  print("-------------------\n");
}
