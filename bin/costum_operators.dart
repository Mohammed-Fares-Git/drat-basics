void main(List<String> args) {

  int? a;
  int? b;


  var res = a + b;

  print(res);

  String myName = 'Mohammed Fares';
  String myFirstName = 'Mohammed';

  var myLastName = myName - myFirstName;

  print(myLastName);

  myName -= myLastName;

  print(myName);
  
}


extension NullableSome<T extends num> on T? {
  T operator + (T? other){
    if (this != null && other == null) return this!;
    if (this == null && other != null) return other;
    if (this != null && other != null) return (this + other) as T;
    return 0 as T;
  }
}

extension StringSubtraction on String {
  String operator - (String other) {
    return replaceAll(other, '');
  }
}