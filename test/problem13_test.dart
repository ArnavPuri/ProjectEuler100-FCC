import 'package:test/test.dart';

import '../bin/problem13.dart';

void main() {
  test('Testing Problem 13 - GetTriangularNumber', () {
    expect(largeSum(testNums), '8348422521');
  });
}

List<String> testNums = [
  '37107287533902102798797998220837590246510135740250',
  '46376937677490009712648124896970078050417018260538'
];
