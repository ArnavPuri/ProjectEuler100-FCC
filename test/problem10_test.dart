import 'package:test/test.dart';

import '../bin/problem10.dart';

void main() {
  test('Testing Problem 10', () {
    expect(primeSummation(17), 41);
    expect(primeSummation(2001), 277050);
    expect(primeSummation(140759), 873608362);
    expect(primeSummation(2000000), 142913828922);
  });
}
