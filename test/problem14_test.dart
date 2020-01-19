import 'package:test/test.dart';

import '../bin/problem14.dart';

void main() {
  test('Testing Problem 14 - GetTriangularNumber', () {
    expect(longestCollatzSequence(14), 9);
    expect(longestCollatzSequence(5847), 3711);
    expect(longestCollatzSequence(46500), 35655);
    expect(longestCollatzSequence(54512), 52527);
    expect(longestCollatzSequence(100000), 77031);
  });
}

List<String> testNums = [
  '37107287533902102798797998220837590246510135740250',
  '46376937677490009712648124896970078050417018260538'
];
