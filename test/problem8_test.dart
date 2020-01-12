import 'package:test/test.dart';

import '../bin/problem8.dart';

void main() {
  test('Testing Problem 8', () {
    expect(largestProductInASeries(4), 5832);
    expect(largestProductInASeries(13), 23514624000);
  });
}
