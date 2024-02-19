import 'dart:math';

void main(List<String> args) {
  late final String lateValue = getLateValue("mohammed fares");

  print(" - getLate value was assigned to late Value");

  print(" - before using the lateValue");

  var lateValueLenght = lateValue.length;

  print(lateValueLenght);

  print(" - after using the lateValue");


  Person person = Person("soufyane felate");
  print(person.name);
  print(person.age);
  
  
  
}

String getLateValue(String late){
  print(late);
  return late;
}

class Person {
  late int age = _getAge();
  final String name;

  Person (this.name) {
    print("constructor() is called");
  }

  int _getAge() {
    print("getAge() is called");
    return Random().nextInt(66);
  }

}