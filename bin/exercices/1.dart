import 'dart:io';

void main() {
  List<String> noms = [];
  for (int i = 0; i < 5; i++) {
    stdout.write('Entrez le nom numéro ${i + 1}: ');
    String nom = stdin.readLineSync()!;
    noms.add(nom);
  }
  print('Liste avant suppression du deuxième nom : $noms');

  if (noms.length >= 2) {
    noms.removeAt(1); 
    print('Le deuxième nom a été supprimé avec succès.');
  } else {
    print('Il n\'y a pas assez de noms dans la liste pour supprimer le deuxième nom.');
  }

  print('Liste après suppression du deuxième nom : $noms');
}
