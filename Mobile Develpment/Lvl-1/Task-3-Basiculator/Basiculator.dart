import 'dart:io';

void main() {
  //Read 2 numbers
  stdout.write("Enter the first number: ");
  var num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  var num2 = int.parse(stdin.readLineSync()!);

  //Input their choices
  stdout
      .write("Enter Your Choice of Operation: \n1.Arithmetic\n2.Comparison\n");
  var choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      //Arithmetic Operation
      stdout.write(
          "Enter the operation you want to perform: \n1.Addition\n2.Substraction\n3.Multiplication\n4.Divison\n");
      var op = stdin.readLineSync();
      switch (op) {
        case '1':
          print("The Sum is: ${num1 + num2}");
          break;
        case '2':
          print("The Difference is: ${num1 - num2}");
          break;
        case '3':
          print("The Product is: ${num1 * num2}");
          break;
        case '4':
          print("The Quotient is: ${num1 / num2}");
          break;
        default:
          print("Invalid operation choice!");
      }
      break;
    case '2':
      // Comparison operations
      stdout.write(
          "Enter the operation you want to perform: \n1.Greater than\n2.Less than\n3.is equal\n");
      var op2 = stdin.readLineSync();
      switch (op2) {
        case '1':
          if (num1 > num2) {
            print("$num1 is greater than $num2");
          } else {
            print("$num1 is not greater than $num2");
          }
          break;
        case '2':
          if (num1 < num2) {
            print("$num1 is less than $num2");
          } else {
            print("$num1 is not less than $num2");
          }
          break;
        case '3':
          if (num1 == num2) {
            print("$num1 is equal to $num2");
          } else {
            print("$num1 is not equal to $num2");
          }
          break;
        default:
          print("Invalid operation choice!");
      }
      break;
    default:
      print("Invalid choice!");
  }
}
