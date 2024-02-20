void main(List<String> args) {
  basicFunction();

  print("+++++++++++++++++++++++++++++++");

  print(factorial(1));
  print(factorial(2));
  print(factorial(3));
  print(factorial(4));
  print(factorial(5));
  print(factorial(100));

  print("+++++++++++++++++++++++++++++++");

  print(factorialWithForLoop(1));
  print(factorialWithForLoop(2));
  print(factorialWithForLoop(3));
  print(factorialWithForLoop(4));
  print(factorialWithForLoop(5));
  print(factorialWithForLoop(100));

  print("+++++++++++++++++++++++++++++++");

  print(factorialWithWhileLoop(1));
  print(factorialWithWhileLoop(2));
  print(factorialWithWhileLoop(3));
  print(factorialWithWhileLoop(4));
  print(factorialWithWhileLoop(5));
  print(factorialWithWhileLoop(100));

  print("+++++++++++++++++++++++++++++++");

  print(greeting());
  print(greeting(name: null) ?? "name param is null");
  print(greeting(name: "Mohammed Fraes"));

  print("+++++++++++++++++++++++++++++++");

  //print(greetingWithRequiredParams()); error
  print(greetingWithRequiredParams(name: null) ?? "name param is null");
  print(greetingWithRequiredParams(name: "Mohammed Fraes"));

  print("+++++++++++++++++++++++++++++++");

  format(" - ", ';', ["mohammed fares", "amine ouanda", "soufyane felate", "youness kinani"]);
}



basicFunction(){
  print("basicFunction is called");
}

BigInt factorial(int n){
  if (n == 0 || n == 1) return BigInt.one;
  return BigInt.from(n) * factorial(n - 1);
}

BigInt factorialWithForLoop(int n){
  BigInt res = BigInt.one;
  if (n == 0 || n == 1) return res;
  for (int i = 2; i <= n; i++){
    res *= BigInt.from(i);
  }
  return res;
}


BigInt factorialWithWhileLoop(int n){
  BigInt res = BigInt.one;
  if (n == 0 || n == 1) return res;
  var i = n;
  while(i > 0){
    res *= BigInt.from(i--);
  }
  return res;
}


String? greeting({String? name}){
  return name != null ? 'Hello $name' : null;
}

String? greetingWithRequiredParams({required String? name}){
  return name != null ? 'Hello $name' : null;
}

void format(String prefix, String sufix, List<String> content){
  content.forEach((element) {
    print("$prefix $element $sufix");
  });
}
