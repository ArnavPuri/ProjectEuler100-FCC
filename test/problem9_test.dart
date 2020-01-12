import 'package:test/test.dart';

import '../bin/problem9.dart';

void main() {
  test('Testing Problem 9', () {
    expect(specialPythagoreanTriplet(1000), 31875000);
    expect(specialPythagoreanTriplet(24), 480);
  });
}
