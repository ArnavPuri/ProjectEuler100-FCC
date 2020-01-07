import 'package:test/test.dart';

import '../bin/problem2.dart';

void main() {
  test('Testing Problem 2', () {
    expect(sumOfEvenFibonacciTerms(10), 44);
    expect(sumOfEvenFibonacciTerms(18), 3382);
    expect(sumOfEvenFibonacciTerms(23), 60696);
    expect(sumOfEvenFibonacciTerms(43), 350704366);
  });
}
