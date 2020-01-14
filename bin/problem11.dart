import 'dart:math';

/// Project Euler: Problem 11: Largest product in a grid
// The product of these numbers is 26 × 63 × 78 × 14 = 1788696. What is the
// greatest product of four adjacent numbers in the same direction (up, down,
// left, right, or diagonally) in a given arr grid?

int largestGridProduct(List<List<int>> grid) {
  int maxProduct = max(horizontalMaxProduct(grid), verticalMaxProduct(grid));
  return max(maxProduct, diagonalProduct(grid));
}

int diagonalProduct(List<List<int>> grid) {
  int maxProduct = 1;
  for (int row = 0; row < grid[0].length - 3; row++) {
    for (int col = 0; col < grid.length - 3; col++) {
      int product = grid[row][col] *
          grid[row + 1][col + 1] *
          grid[row + 2][col + 2] *
          grid[row + 3][col + 3];
      if (product > maxProduct) {
        maxProduct = product;
      }
    }
  }

  for (int row = 0; row < grid[0].length - 3; row++) {
    for (int col = grid.length - 1; col > 2; col--) {
      int product = grid[row][col] *
          grid[row + 1][col - 1] *
          grid[row + 2][col - 2] *
          grid[row + 3][col - 3];
      if (product > maxProduct) {
        maxProduct = product;
      }
    }
  }
  return maxProduct;
}

int verticalMaxProduct(List<List<int>> grid) {
  int maxProduct = 1;
  for (int col = 0; col < grid[0].length; col++) {
    for (int row = 0; row < grid.length - 4; row++) {
      int product = grid[col][row] *
          grid[row + 1][col] *
          grid[row + 2][col] *
          grid[row + 3][col];
      if (product > maxProduct) {
        maxProduct = product;
      }
    }
  }
  return maxProduct;
}

int horizontalMaxProduct(List<List<int>> grid) {
  int maxProduct = 1;
  for (int row = 0; row < grid.length; row++) {
    for (int i = 0; i < grid[0].length - 4; i++) {
      int product = grid[row].sublist(i, i + 4).reduce((val, el) => val * el);
      if (product > maxProduct) {
        maxProduct = product;
      }
    }
  }
  return maxProduct;
}
