/// Project Euler: Problem 5: Smallest multiple
// 2520 is the smallest number that can be divided by each of the numbers from
// 1 to 10 without any remainder.
// What is the smallest positive number that is evenly divisible by all of the
// numbers from 1 to n?

int smallestMult(int number) {
  List<int> numbers = List.generate(number, (index) => index + 1);
  int lcm = getLCM(numbers[numbers.length - 1], numbers[numbers.length - 2]);
  for (int i = numbers.length - 1; i > 1; i--) {
    if (lcm % numbers[i] != 0) {
      lcm = getLCM(lcm, numbers[i]);
    }
  }
  return lcm;
}

int getLCM(int num1, int num2) {
  if (num1 % num2 == 0) {
    return num1;
  }
  if (num2 % num1 == 0) {
    return num2;
  }
  for (int i = 1; i < num2; i++) {
    if ((num1 * i) % num2 == 0) {
      return num1 * i;
    }
  }
  return num1 * num2;
}
