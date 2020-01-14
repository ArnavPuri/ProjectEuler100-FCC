import 'package:test/test.dart';

import '../bin/problem12.dart';

void main() {
  test('Testing Problem 12 - GetTriangularNumber', () {
    expect(getTriangularNumber(5), 15);
    expect(getTriangularNumber(7), 28);
  });

  test('Testing Problem 12 - Testing Divisor Count', () {
    expect(getDivisorCount(3), 2);
    expect(getDivisorCount(21), 4);
    expect(getDivisorCount(28), 6);
  });

  test('Testing Problem 12', () {
    expect(divisibleTriangleNumber(5), 28);
    expect(divisibleTriangleNumber(23), 630);
    expect(divisibleTriangleNumber(167), 1385280);
    expect(divisibleTriangleNumber(374), 17907120);
    expect(divisibleTriangleNumber(500), 76576500);
  });
}
