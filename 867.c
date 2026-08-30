#include <stdlib.h>

int **transpose(int **matrix, int matrixSize, int *matrixColSize,
                int *returnSize, int **returnColumnSizes) {
  int **transposed = malloc(*matrixColSize * sizeof(*transposed));
  for (int i = 0; i < *matrixColSize; i++) {
    transposed[i] = malloc(matrixSize * sizeof(**matrix));
  }

  for (int i = 0; i < matrixSize; i++) {
    for (int j = 0; j < *matrixColSize; j++) {
      transposed[j][i] = matrix[i][j];
    }
  }

  *returnSize = *matrixColSize;
  *returnColumnSizes = malloc(*matrixColSize * sizeof(matrixSize));
  for (int i = 0; i < *matrixColSize; i++) {
    (*returnColumnSizes)[i] = matrixSize;
  }
  return transposed;
}