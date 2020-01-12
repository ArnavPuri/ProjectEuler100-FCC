/// Project Euler: Problem 6: Sum square difference
//  The sum of the squares of the first ten natural numbers is,
//
//  1^2 + 2^2 + ... + 10^2 = 385
//  The square of the sum of the first ten natural numbers is,
//
//(1 + 2 + ... + 10)^2 = 552 = 3025
//  Hence the difference between the sum of the squares of the first ten natural
// numbers and the square of the sum is 3025 − 385 = 2640.
//
//Find the difference between the sum of the squares of the first n natural numbers and the square of the sum.

int sumSquareDifference(int n) {
  List<int> numbers = List.generate(n, (index) => index + 1);
  return squareOfSum(numbers) - sumOfSquares(numbers);
}

int sumOfSquares(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum = sum + numbers[i] * numbers[i];
  }
  return sum;
}

int squareOfSum(List<int> numbers) {
  int sum = numbers.reduce((val, el) => val + el);
  return sum * sum;
}
