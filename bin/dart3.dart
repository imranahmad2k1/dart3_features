void main(List<String> arguments) {
  final Human imran = Human("Imran Ahmad", 22);
  final Human sayyab = Human("Ahmad Sayyab", 23);
  final Human salman = Human("Salman Khan", 24);

  //old approach
  String fullNameOfImran = imran.name;
  int ageOfImran = imran.age;

  print("Full name: $fullNameOfImran \nAge: $ageOfImran years old\n");

  //with patterns
  final Human(:name, :age) = salman;
  print("Full name: $name \nAge: $age years old\n");

  //with patterns and variable names
  final Human(name: fullNameOfSayyab, age: ageOfSayyab) = sayyab;
  print("Full name: $fullNameOfSayyab \nAge: $ageOfSayyab years old");
}

class Human {
  final String name;
  final int age;

  const Human(this.name, this.age);
}
