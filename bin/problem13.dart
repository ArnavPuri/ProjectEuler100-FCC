/// Problem 13: Large sum
//  Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

String largeSum(List<String> stringNums) => stringNums
    .map((item) => int.parse(item.substring(0, 11)))
    .reduce((val, el) => val + el)
    .toString()
    .substring(0, 10);
