import 'dart:io';

class Car {
  String model;
  double cost;

  Car(this.model, this.cost);

  void updatePrice(double updatedCost) {
    cost = updatedCost;
    print('Updated: $model now costs \$$cost.');
  }
}

class User {
  String username;
  List<Car> garage = [];
  double balance;

  User(this.username, this.balance);

  void purchaseCar(Car car) {
    if (balance >= car.cost) {
      garage.add(car);
      balance -= car.cost;
      print(
        '$username, you bought a ${car.model} for \$${car.cost}. Remaining balance: \$$balance.',
      );
    } else {
      print('Sorry $username, you can’t afford the ${car.model} right now.');
    }
  }

  void sellCar(Car car) {
    if (garage.contains(car)) {
      garage.remove(car);
      balance += car.cost;
      print(
        'You sold your ${car.model} for \$${car.cost}. New balance: \$$balance.',
      );
    } else {
      print('You don’t own a ${car.model} to sell.');
    }
  }
}

void main() {
  Car carA = Car('Tesla Model 3', 40000);
  Car carB = Car('Hyundai Elantra', 22000);
  Car carC = Car('Chevrolet Silverado', 38000);

  print('🚗 Welcome to CarHub - Your Personal Car Market!\n');
  stdout.write('Enter your name: ');
  String nameInput = stdin.readLineSync()!;
  stdout.write('Hi $nameInput! How much money do you have? \$');
  double funds = double.parse(stdin.readLineSync()!);

  User currentUser = User(nameInput, funds);

  while (true) {
    print('\n🛠 What would you like to do?');
    print('1. Buy a car');
    print('2. Modify car price');
    print('3. Sell one of your cars');
    print('4. View owned cars');
    print('5. Exit the app');
    stdout.write('Select an option (1-5): ');
    int option = int.parse(stdin.readLineSync()!);

    if (option == 1) {
      print('\n🚘 Cars Available for Purchase:');
      print('1. ${carA.model} - \$${carA.cost}');
      print('2. ${carB.model} - \$${carB.cost}');
      print('3. ${carC.model} - \$${carC.cost}');
      stdout.write('Enter the number of the car you want to buy: ');
      int selection = int.parse(stdin.readLineSync()!);

      if (selection == 1) {
        currentUser.purchaseCar(carA);
      } else if (selection == 2) {
        currentUser.purchaseCar(carB);
      } else if (selection == 3) {
        currentUser.purchaseCar(carC);
      } else {
        print('Invalid selection. Try again.');
      }
    } else if (option == 2) {
      print('\n🔧 Choose a car to update its price:');
      print('1. ${carA.model}');
      print('2. ${carB.model}');
      print('3. ${carC.model}');
      stdout.write('Enter your choice: ');
      int updateChoice = int.parse(stdin.readLineSync()!);
      stdout.write('Enter the new price: \$');
      double updatedPrice = double.parse(stdin.readLineSync()!);

      if (updateChoice == 1) {
        carA.updatePrice(updatedPrice);
      } else if (updateChoice == 2) {
        carB.updatePrice(updatedPrice);
      } else if (updateChoice == 3) {
        carC.updatePrice(updatedPrice);
      } else {
        print('Invalid car selected. Try again.');
      }
    } else if (option == 3) {
      if (currentUser.garage.isEmpty) {
        print('\n$nameInput, you have no cars to sell.');
      } else {
        print('\n🚗 Your Garage:');
        for (int i = 0; i < currentUser.garage.length; i++) {
          print('${i + 1}. ${currentUser.garage[i].model}');
        }
        stdout.write('Which car would you like to sell? Enter number: ');
        int sellOption = int.parse(stdin.readLineSync()!);
        if (sellOption >= 1 && sellOption <= currentUser.garage.length) {
          currentUser.sellCar(currentUser.garage[sellOption - 1]);
        } else {
          print('Invalid input. Try again.');
        }
      }
    } else if (option == 4) {
      if (currentUser.garage.isEmpty) {
        print('\n$nameInput, you haven’t bought any cars yet.');
      } else {
        print('\n🚘 Cars You Own:');
        for (int i = 0; i < currentUser.garage.length; i++) {
          print('${i + 1}. ${currentUser.garage[i].model}');
        }
      }
    } else if (option == 5) {
      print('\n👋 Thanks for using CarHub, $nameInput! Safe travels.');
      break;
    } else {
      print('❗ Please enter a valid option (1-5).');
    }
  }
}
