/// Project Euler: Problem 7: 10001st prime
//  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
// that the 6th prime is 13.
//  What is the nth prime number?

int nthPrime(int n) {
  int count = 0;
  int currentNum = 1;
  while (count != n) {
    currentNum++;
    if (isPrime(currentNum)) {
      count++;
    }
  }
  return currentNum;
}

bool isPrime(int n) {
  if (n == 1) {
    return false;
  }
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
