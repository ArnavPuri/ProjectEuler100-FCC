/// Project Euler: Problem 3: Largest prime factor
// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the given number?

int findMaxFactor(int n) {
  for (int i = n; i > 1; i--) {
    if (n % i == 0 && isPrime(i)) {
      return i;
    }
  }
  return n;
}

bool isPrime(int number) {
  bool isPrimeNumber = true;
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      isPrimeNumber = false;
      break;
    }
  }
  return isPrimeNumber;
}
