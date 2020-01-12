import 'package:test/test.dart';

import '../bin/problem7.dart';

void main() {
  test('Testing Problem 7', () {
    expect(nthPrime(6), 13);
    expect(nthPrime(10), 29);
    expect(nthPrime(100), 541);
    expect(nthPrime(1000), 7919);
    expect(nthPrime(10001), 104743);
  });
}
