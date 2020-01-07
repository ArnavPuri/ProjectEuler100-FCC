import 'package:test/test.dart';

import '../bin/problem3.dart';

void main() {
  test('Testing Problem 3', () {
    expect(findMaxFactor(2), 2);
    expect(findMaxFactor(3), 3);
    expect(findMaxFactor(5), 5);
    expect(findMaxFactor(7), 7);
    expect(findMaxFactor(13195), 29);
  });
}
