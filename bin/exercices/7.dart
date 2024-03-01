import 'dart:io';

void main(List<String> args) {
  
  List<String> mots = ['ista','est','lmsemen','ofppt','farabi','banana'];

  stdout.write('- entrer une mot :');
  final String mot = stdin.readLineSync()!;

  bool exists = mots.contains(mot);

  if(exists){
    print('------ Nadu !!! ------');
  } else {
    print('------ Zlagtu !!! ------');
  }
}