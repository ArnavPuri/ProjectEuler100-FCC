import 'package:test/test.dart';

import '../bin/problem6.dart';

void main() {
  test('Testing Problem 6', () {
    expect(sumSquareDifference(10), 2640);
    expect(sumSquareDifference(20), 41230);
    expect(sumSquareDifference(100), 25164150);
  });
}
