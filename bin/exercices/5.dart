import 'dart:io';

void main(List<String> args) {
  stdout.write('- entrer votre age :');
  int age = int.parse(stdin.readLineSync() ?? '20');

  String message;

  if(age < 18){
    message = 'vous etes <18.';
  } else {
    message = 'vous etes >=18';
  }

  print(message);
}