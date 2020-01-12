import 'dart:math';

/// Project Euler: Problem 10: Summation of primes
//  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//  Find the sum of all the primes below n.

int primeSummation(int n) {
  int summation = 0;
  for (int i = 1; i < n; i++) {
    if (isPrime(i)) {
      summation = summation + i;
    }
  }
  return summation;
}

bool isPrime(int number) {
  if (number == 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(number).floor(); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
