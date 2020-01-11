import 'package:test/test.dart';

import '../bin/problem5.dart';

void main() {
  test('Testing Problem 5 - getLCM', () {
    expect(getLCM(10, 5), 10);
    expect(getLCM(2, 4), 4);
    expect(getLCM(30, 15), 30);
    expect(getLCM(4, 8), 8);
    expect(getLCM(8, 6), 24);
    expect(getLCM(12, 10), 60);
    expect(getLCM(14, 21), 42);
  });

  test('Testing Problem 5 - Smallest multiple', () {
    expect(smallestMult(5), 60);
    expect(smallestMult(13), 360360);
  });
}
