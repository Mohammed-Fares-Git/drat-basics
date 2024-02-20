import 'package:dart/dart.dart';
import 'package:test/test.dart';

import '../bin/functions.dart';

void main() {
  test('factorial', () {
    expect(factorial(1), BigInt.one);
  });
  test('factorial', () {
    expect(factorial(2), BigInt.two);
  });
  test('factorial', () {
    expect(factorial(3), BigInt.from(6));
  });
  test('factorial', () {
    expect(factorial(4), BigInt.from(24));
  });
  test('factorial', () {
    expect(factorial(5), BigInt.from(120));
  });
  test('factorial', () {
    expect(factorial(100), factorialWithForLoop(100));
  });
}
