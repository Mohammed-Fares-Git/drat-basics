import 'dart:io';

void main(List<String> args) {
  stdout.write('- entrer la température en Celsius :');
  final temperature = (stdin.readLineSync() ?? 30) as int;

  final temperatureEnFerinheit = (temperature * (9/5)) + 32;

  print('- la temperature en Ferinheit est = $temperatureEnFerinheit');
}