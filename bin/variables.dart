import 'package:dart/dart.dart' as dart;

void main(List<String> arguments) {
  print('Hello world: ${dart.calculate()}!');

  const nom = "Fares";
  final prenom = "Mohammed";

  const noms = ["fares", "ouanda", "felate", "kinani"];
  final prenoms = ["mohammed","amine","soufyane","youness"];

  prenoms.remove("mohammed");

  print(prenoms);


  var age = 20;
  print(age++);
  print(age);

  String? address;

  print(address?.toUpperCase());

  print(address?.toUpperCase() ?? "unknown".toUpperCase());

  address ??= "hay nahda";

  print(address?.toUpperCase());


  dynamic dateNaissance;

  print(dateNaissance);

  dateNaissance ??= 2003;

  print(dateNaissance);

  dateNaissance = dateNaissance.toString().split("").join(".");

  print(dateNaissance);

  


}
