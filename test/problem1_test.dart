import '../bin/problem1.dart';
import 'package:test/test.dart';

void main() {
  test('Testing Challenge 1', () {
    expect(multiplesOf3and5(1000), 233168);
    expect(multiplesOf3and5(49), 543);
    expect(multiplesOf3and5(19564), 89301183);
    expect(multiplesOf3and5(8456), 16687353);
  });
}
