void main() {
  var person = new Person('Kalesh');
  person.printName();
}

class Person {
  String firstName;

//   Person(firstName) {
//     firstName = firstName;
//   }

  // Abbreviated constructor syntax
  Person(this.firstName);

  printName() {
    print(firstName);
  }
}
