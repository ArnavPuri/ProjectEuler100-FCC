/// Problem 15: Lattice paths
//  Starting in the top left corner of a 2×2 grid, and only being able to move to
//  the right and down, there are exactly 6 routes to the bottom right corner.
//  How many such routes are there through a given gridSize?

int latticePaths(int gridSize) => optimizedFactorial(gridSize * 2, gridSize);

// In order to pass larger grid's test case
int optimizedFactorial(int largerNumber, int smallerNumber) {
  List<int> largerNumberMultiples =
      List.generate(largerNumber, (index) => index + 1)
          .sublist(largerNumber ~/ 2);
  List<int> smallerNumberMultiples =
      List.generate(smallerNumber, (index) => index + 1).reversed.toList();
  for (int i = 0; i < smallerNumberMultiples.length; i++) {
    int multiple = smallerNumberMultiples[i];
    for (int j = 0; j < largerNumberMultiples.length; j++) {
      if (largerNumberMultiples[j] % multiple == 0) {
        largerNumberMultiples[j] =
            (largerNumberMultiples[j] / multiple).floor();
        smallerNumberMultiples[i] = 1;
        break;
      }
    }
  }
  return largerNumberMultiples.reduce((val, el) => val * el) ~/
      smallerNumberMultiples.reduce((val, el) => val * el);
}
