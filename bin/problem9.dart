/// Project Euler: Problem 9: Special Pythagorean triplet
//A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
//
//a^2 + b^2 = c^2
//For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
//
//There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find
// the product abc such that a + b + c = n.

int specialPythagoreanTriplet(int sum) {
  for (int a = 1; a < sum; a++) {
    for (int b = a + 1; b < sum; b++) {
      int c = sum - a - b;
      if (isPythagoreanTriplet(a, b, c)) {
        return a * b * c;
      }
    }
  }
  return 0;
}

bool isPythagoreanTriplet(int a, int b, int c) => (a * a + b * b) == c * c;
