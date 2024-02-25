import 'dart:convert';

void main(List<String> args) {

  var myCat = new Animal(AnimalType.cat, "mimi");
  var myDog = Dog("black","mehdy");
  var myHorse = Animal.horse('horsy');

  print(myCat);
  print(myDog);
  print(myHorse);

  final Car myCar = Car();

  myCar.doorsCount = 5;
  myCar.wheelsCount = 5;
  myCar.engine = 'AS 10';

  myCar.display();

  var jsonAccount = '{"owner": "Mohammed Fares", "amount": 5000.0}';
  var decodedJsonAccount = jsonDecode(jsonAccount);
  print("- $decodedJsonAccount is ${decodedJsonAccount.runtimeType}");

  //var account = Account.fromJson(decodedJsonAccount);
  var account1 = const Account("mohammed fares", 120,["06/02/2003"]);
  var account2 = const Account("mohammed fares", 120,["06/02/2003"]);

  //print("- $account");
  print("- ${account1.hashCode}");
  print("- ${account2.hashCode}");

  //ccount1.dates.add('02/16/2002');
  print("- ${account1.dates}");
  print("- ${account2.dates}");



  LapTop(5);
  MacBook(7);


  var myCar2 = Car2();

  myCar2.showInfo();

  myCar2.drive(80);


  
}



class Animal {
  final AnimalType animalType;
  String name;

  Animal(this.animalType, this.name);

  Animal.horse(this.name): this.animalType = AnimalType.horse;

  @override
  String toString() {
    return "- ${this.name} is a ${this.animalType.name.toUpperCase()}";
  }

}

enum AnimalType {
  horse,
  dog,
  cat
}

class Dog extends Animal {

  String color;

  Dog(this.color,String name) : super(AnimalType.dog, name);

  @override
  String toString() {
    return "${super.toString()} and its ${this.color}";
  }
  
}

class Car {
  int? wheelsCount;
  int? doorsCount;
  String? engine;

  void display(){
    print("- this $runtimeType has $wheelsCount, $doorsCount and a $engine engine");
  }
}


class Account {
  final String owner;
  final double amount;
  final List<String> dates;

  const Account(this.owner, this.amount , this.dates);

  //Account.fromJson(Map<String,dynamic> json): this.owner = json["owner"], this.amount = json["amount"];

  @override
  String toString() {
    return "${super.toString()} :\n\t* $owner\n\t* $amount";
  }
}

class Employe{
  String _id;
  String _name;

  Employe(this._id,this._name);

  String get name => _name;
  String get id => _id;

  set name(String name) => _name = name;
  set id(String id) => _id = id;
}



class LapTop {
  LapTop (int i){
    print("- this is a $runtimeType : $i");
  }
}
class MacBook extends LapTop {
  MacBook (int j) : super(j){
    print("\t* and this is a $runtimeType");
  }
}

abstract class Vehicle {
  
  final VehicleKind kind;
  const Vehicle({required this.kind});

  void drive(int speed);

  void showInfo() => print("- this $runtimeType is a ${kind.name}");

}

enum VehicleKind {bicycle, car, camio, motorcycle}

class Car2 extends Vehicle {

  const Car2() : super(kind: VehicleKind.car);

  @override
  void drive(int speed) => print("- accelarating to $speed ...");

}