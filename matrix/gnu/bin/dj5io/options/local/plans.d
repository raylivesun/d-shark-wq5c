module local.plans;

import std.stdio;
import std.array;
import std.algorithm;
import std.math;

/*
2.1. INTRODUCTION
9
rectangular. In contrast, a matrix must be square to have an eigendecompo-
sition. Even then not all square matrices can be diagonalized, but a sufficient
condition under which M can be diagonalized is that all its eigenvalues are
distinct.
*/

public static void rectangular(const char Matrix, double mat, int t)(ref T[] array) {
    if (Matrix == 'A') {
        // Matrix A
        array = [
            [4, 2],
            [3, 1]
        ];
    } else if (Matrix == 'B') {
        // Matrix B
        array = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
        ];
        // Perform Gaussian elimination
        gaussianElimination(array, mat);
        // Check for singularity
        if (determinant(array) == 0) {
            throw new Exception("Matrix is singular.");
        }
        // Calculate eigenvalues and eigenvectors
        auto eigenvalues = eigenvalues(array);
        auto eigenvectors = eigenvectors(array);
        // Print eigenvalues and eigenvectors
        printf("Eigenvalues:\n");
        foreach (val; eigenvalues) {
            printf("%.*f\n", mat, val);
            // Normalize eigenvectors
            normalizeEigenvectors(eigenvectors, eigenvalues, digits);
            printf("Eigenvectors:\n");
            foreach (val; eigenvectors) {
                printf("%.*f ", mat, val);
            }
            printf("\n");
        
        }
    }
}


/*
2.2. MATRIX MULTIPLICATION
11
*/
public static void mat_multiply(double a, double b, double c, double d)(double[][] T){
    // Matrix multiplication
    Array = [
        [a*c - b*d],
        [a*d + b*c]
    ];
    return;
}


/*
2.3. DETERMINANT
13
*/
public static double determinant(const char matrix)(double[][] T) {
    int n = matrix.length;
    double det = 0;
    if (n == 1) {
        return matrix[0][0];
    } else if (n == 2) {
        return matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0];

    } else {
        for (int j = 0; j < n; j++) {
            T[][] temp = new T[n - 1][n - 1];
            int row = 0;
            for (int i = 1; i < n; i++) {
                int col = 0;
                for (int k = 0; k < n; k++) {
                    if (k != j) {
                        temp[row][col++] = matrix[i][k];
                        if (col == n - 1) {
                            row++;
                            col = 0;
                        }
                    }

                }
            }
            det += matrix[0][j] * ((j % 2 == 0)? 1 : -1) * determinant(temp);
        }
        return det;
    }
    return 0;
}


/*
2.4. INVERSE
17
*/
public static void inverse(const char matrix, double inverse)(double[][] T) {
    int n = matrix.length;
    double det = determinant(matrix);
    if (det == 0) {
        throw new Exception("Matrix is singular.");
    }
    inverse = new T[n][n];
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            T[][] temp = new T[n - 1][n - 1];
            int row = 0;
            for (int m = 0; m < n; m++) {
                if (m != i) {
                    int col = 0;
                    for (int k = 0; k < n; k++) {
                        if (k!= j) {
                            temp[row][col++] = matrix[m][k];
                            if (col == n - 1) {
                                row++;
                                col = 0;
                            }
                        }
                    }
                    double cofactor = ((i + j) % 2 == 0)? 1 : -1;
                    inverse[j][i] = cofactor * determinant(temp);
                }
                else {
                    inverse[j][i] = 0;
                }
            }
            inverse[j][i] /= det;
        }
    }
    return;
}


/*
2.5. GAUSSIAN ELIMINATION
21
*/
public static void gaussianElimination(const char matrix, double mat)(ref T[][]) {
    int n = matrix.length;
    for (int i = 0; i < n - 1; i++) {
        double max = abs(matrix[i][i]);
        int maxRow = i;
        for (int j = i + 1; j < n; j++) {
            double absVal = abs(matrix[j][i]);
            if (absVal > max) {
                max = absVal;
                maxRow = j;
            }
        }
        // Swap rows if necessary
        if (maxRow!= i) {
            swapRows(matrix, i, maxRow);
        }
        // Eliminate the elements below the pivot element in the current column
        for (int k = i + 1; k < n; k++) {
            double factor = matrix[k][i] / matrix[i][i];
            for (int j = i; j < n; j++) {
                matrix[k][j] -= factor * matrix[i][j];
            }
        }
        // Normalize the pivot row
        normalizeRow(matrix, i, mat);
    }
    return;
}


/*
2.6. EIGENVALUES AND EIGENVECTORS
27
*/
public static double[] eigenvalues(const char matrix)(double [][] T) {
    int n = matrix.length;
    double[] eigenvalues = new double[n];
    T[][] eigenvectors = new T[n][n];
    for (int i = 0; i < n; i++) {
        T[][] temp = new T[n][n];
        for (int j = 0; j < n; j++) {
            for (int k = 0; k < n; k++) {
                temp[j][k] = matrix[k][j];
            }
                        double c = matrix[i][i];
            mat_multiply(c, -1, c, 1, temp);
            mat_multiply(temp[0][0], temp[1][1], temp[0][1], -temp[1][0], temp);
            mat_multiply(temp[0][0], temp[1][1] - temp[1][0], temp[0][1] + temp[1][0], 0,
            temp);
            mat_multiply(temp[0][0] + temp[1][1], 2, temp[0][0] - temp[1][1], 1,
            temp);
            mat_multiply(temp[0][0], temp[0][0] - temp[1][1], 1, temp[1][1] + temp[0][0],
            temp);
            mat_multiply(temp[0][0] - temp[1][1], 2, temp[0][0] + temp[1][1], 1,
            temp);
            eigenvalues[i] = sqrt(temp[0][0]);
            if (eigenvalues[i]!= 0) {
                mat_multiply(temp[0][0] / eigenvalues[i], temp[1][1] / eigenvalues[i], 1, 0,
                eigenvectors[i]);
                mat_multiply(temp[0][0], temp[1][1] / eigenvalues[i], 1, 0,
                temp);
                mat_multiply(temp[0][0] - eigenvalues[i], temp[0][1] / eigenvalues[i], 1, 0,
                temp);
                mat_multiply(temp[0][0], temp[0][1] / eigenvalues[i], 1, 0,
                eigenvectors[i]);
                normalizeEigenvectors(eigenvectors, eigenvalues, digits);
            }
            break;
        }
        if (eigenvalues[i] == 0) {
            throw new Exception("Matrix is singular.");
        }
    }
    return eigenvalues;
}

void main(string[] args) {
    // Example usage
    const char matrixA;
    const char matrixB;
    double mat = 10;
    double eigenvaluesA, eigenvectorsA;
    double eigenvaluesB, eigenvectorsB;
    try {
        eigenvaluesA = !(matrixA);
        eigenvectorsA = !(matrixA);
        printf("Matrix A:\n");
        printf("Eigenvalues A:\n");
        printf("Eigenvectors A:\n");
        
        printf("\nMatrix B:\n");
        eigenvaluesB = !(matrixB);
        eigenvectorsB = !(matrixB);
        printf("Eigenvalues B:\n");
        printf("Eigenvectors B:\n");
        
        printf("\nMatrix multiplication:\n");
        double[][]  matrixC;
        
        printf("\nMatrix addition:\n");
        double[][] matrixD;
        
        printf("\nMatrix subtraction:\n");
        double[][] matrixE;
        
        printf("\nMatrix determinant:\n");
      
        printf("\nMatrix inverse:\n");
        double[][] matrixF;
        
        printf("\nMatrix Gaussian elimination:\n");
    }
  finally {
    printf("Exiting...\n");
  }
}
