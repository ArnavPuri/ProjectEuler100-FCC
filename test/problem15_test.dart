import 'package:test/test.dart';

import '../bin/problem15.dart';

void main() {
  test('Testing Problem 15', () {
    expect(latticePaths(4), 70);
    expect(latticePaths(2), 6);
    expect(latticePaths(9), 48620);
    expect(latticePaths(20), 137846528820);
  });
}
