import 'package:test/test.dart';

import '../bin/problem4.dart';

void main() {
  test('Testing Problem 4 - isPalindrome', () {
    expect(isPalindrome(1001), true);
    expect(isPalindrome(33), true);
    expect(isPalindrome(335), false);
  });

  test('Testing Problem 4 - maxPalindrome number', () {
    expect(largestPalindromeProduct(2), 9009);
    expect(largestPalindromeProduct(3), 906609);
  });
}
