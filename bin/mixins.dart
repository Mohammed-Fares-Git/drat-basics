
void main(List<String> args) {

  print(Person().fullName);

  print(getFullName(Person('Amine', 'Ouanda')));

  var person = Person('Soufyne', 'Felate');

  person.increment(3);

  print(person);
  
}

String getFullName(HasFullName obj) => obj.fullName;

mixin HasAge {
  int get age;
  set age(int age);

  void increment(int years) => age += years;

}

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName{
  String get fullName => "$firstName $lastName";
}

class Person with HasFirstName, HasLastName, HasFullName, HasAge {

  final String _firstNAme;
  final String _lastNAme;
  int age;

  Person([this._firstNAme = 'Mohammed', this._lastNAme = 'Fares', this.age = 18]);

  @override
  String get firstName => _firstNAme;

  @override
  String get lastName => _lastNAme;

  @override
  String toString() {
    return '$fullName is $age';
  }

}