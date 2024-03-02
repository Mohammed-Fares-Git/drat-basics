import 'dart:io';

void main(List<String> args) {
  bool isInvalid;
  int input;

  do{
    stdout.write('- entrer un nombre positif :');
    input =  int.parse(stdin.readLineSync() ?? '0');
    if(input < 0){
      isInvalid = true;
      stderr.write('- wah khona !!\n');
    } else {
      isInvalid = false;
    }
  } while(isInvalid);


  print('- le factorial de $input est ${factorial(input)}.');



}

BigInt factorial(int n){
  if (n == 0 || n == 1) return BigInt.one;
  return BigInt.from(n) * factorial(n - 1);
}