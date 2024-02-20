import 'package:collection/collection.dart';
void main(List<String> args) {
  final List<String> names = ["Mohammed Fares", "Abdlah El Felhy", "Amine Ouanda", "Amine Ouanda", "Hamza Fadily", "Soufyane Felate", "Youness Kinani"];

  for (String name in names.where((element) => element.startsWith("A"))) {
    print(name);
  }

  print("+++++++++++++++++++++++++++++++++++");

  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);
  print(names[4]);
  print(names[5]);

  print("+++++++++++++++++++++++++++++++++++");

  names.forEach((element) => print(" - the lenght of $element is ${element.length}"));

  print("+++++++++++++++++++++++++++++++++++");

  final ids =  {'qb5648','qb5648','ar4879','ng45678','op8569'};
  final uniqueNames = {...names};
  
  print(uniqueNames);
  print(ids);

  print("+++++++++++++++++++++++++++++++++++");

  final students = {
    'fares': 21,
    'felhy': 21,
    'ouanda': 19,
    'kinani': 20,
    'fadily': 21
  };

  print(students);
}


