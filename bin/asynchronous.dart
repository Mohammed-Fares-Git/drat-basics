
import 'dart:async';


void main(List<String> args) async {

  getPhoneNumberDelaied()
    .then((value) => print(value));


  print('\n--------------------------------------\n');

  getNameFromNet()
    .then((value) => print(value));
  print('\n--------------------------------------\n');
  print(getName());
  print('\n--------------------------------------\n');
  print(getNameFromNet());
  print('\n--------------------------------------\n');
  print(await getNameFromNet());
  print('\n--------------------------------------\n');

  print(await getNums([2.3,6.3,5.02,0.1]));
  print('\n--------------------------------------\n');

  await Future.delayed(const Duration(seconds: 5));
  print('\n--------------------------------------\n');

  await for (final i in getNumbers()){
    print('yield : $i');
  }
  print('\n--------------------------------------\n');

  await for (final i in getStreamOfNames(['Mohammed','Fares']).asyncExpand((event) => getCharsFromName(event))){
    print(i);
  }
  print('\n--------------------------------------\n');

  await for (final i in getAllNames()){
    print(i);
  }
  print('\n--------------------------------------\n');
}


String getName(){
  return 'Mohammed Fares';
}


Future<String> getNameFromNet() async {
  return 'Mohammed Fares ASYNC';
}

Future<List<int>> getNums(List<double> doubles){
  Iterable<int> ints = doubles.map((e) => e.toInt());
  return Future.value(ints.toList());
}

Future<String> getPhoneNumberDelaied({String phone = '0628-647280'}) =>
  Future.delayed(const Duration(seconds: 3), ()=> phone);

Stream<int> getNumbers({int steps = 10, int duration = 200}) async*{
  for (int i = 0; i < steps; i++) {
    await Future.delayed(Duration(milliseconds: duration));
    yield i;
  }
}

Stream<String> getStreamOfNames(List<String> names) async*{
  for (final name in  names){
    await Future.delayed(const Duration(seconds: 1));
    yield name;
  }
}

Stream<String> getCharsFromName (String name) async*{
  for(int i = 0; i < name.length; i++) {
    await Future.delayed(const Duration(milliseconds: 100));
    yield name[i];
  }
}

Stream<String> getMaleNames() async*{
  yield 'mohammed';
  yield 'mohammed Amine';
  yield 'Soufyane';
  yield 'Youness';
}


Stream<String> getFemaleNames() async*{
  yield 'amina';
  yield 'jihad';
  yield 'soumia';
  yield 'fatim ezahra';
}



Stream<String> getAllNames() async*{
  yield* getFemaleNames();
  yield* getMaleNames();
}