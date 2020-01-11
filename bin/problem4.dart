import 'dart:math';

/// Project Euler: Problem 4: Largest palindrome product
//  A palindromic number reads the same both ways. The largest palindrome made
// from the product of two 2-digit numbers is 9009 = 91 × 99.
//
//  Find the largest palindrome made from the product of two n-digit numbers.

int largestPalindromeProduct(int digits) {
  int lowerBound = pow(10, digits - 1);
  int upperBound = pow(10, digits);
  int maxPalindrome = -1;
  for (int i = upperBound - 1; i > lowerBound; i--) {
    for (int j = upperBound - 1; j > lowerBound; j--) {
      int prod = i * j;
      if (isPalindrome(prod)) {
        if (prod > maxPalindrome) {
          maxPalindrome = prod;
        }
      }
    }
  }
  return maxPalindrome;
}

bool isPalindrome(int number) =>
    number.toString() == number.toString().split('').reversed.join();
