import 'dart:io';

// Define an interface
abstract class Animal {
  String makeSound();
}

// Define a base class Mammal that implements the Animal interface
class Mammal implements Animal {
  @override
  String makeSound() {
    return "Mammal sound";
  }
}

// Define a class Dog that inherits from Mammal
class Dog extends Mammal {
  @override
  String makeSound() {
    return "Bark";
  }
}

// Define a class Cat that inherits from Mammal
class Cat extends Mammal {
  @override
  String makeSound() {
    return "Meow";
  }
}

// Method to initialize instances of animals from a file
List<Animal> initializeAnimalsFromFile(String filename) {
  List<Animal> animals = [];
  File(filename).readAsLinesSync().forEach((animalType) {
    if (animalType == "Dog") {
      animals.add(Dog());
    } else if (animalType == "Cat") {
      animals.add(Cat());
    }
  });
  return animals;
}

// Method that demonstrates the use of a loop
void makeSounds(List<Animal> animals) {
  for (var animal in animals) {
    print(animal.makeSound());
  }
}

// Main function
void main() {
  // Initialize animals from a file
  var animals = initializeAnimalsFromFile("animals.txt");

  // Make sounds of animals
  makeSounds(animals);
}

