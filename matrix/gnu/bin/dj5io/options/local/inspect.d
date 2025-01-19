module local.inspect;

import std.stdio;
import std.array;
import std.algorithm;


/*
Theorem 2.1.2 (Eckart-Young) argmin kM − BkF =
rank(B)≤k
Pk
T
i=1 σi ui vi
Let Mk be the best rank k approximation. Then from our alternative definition of
qP
r
2
the Frobenius norm it is immediate that kM − Mk kF =
i=k+1 σi .
In fact, the same statement – that the best rank k approximation to M is its
truncated singular value decomposition – holds for any norm that is invariant under
rotations. As another application consider the operator norm:
*/


// Function to compute the Frobenius norm of a matrix
float frobeniusNorm(float matrix)(float[][] sumq) {
    sumq = 0.0;
    foreach (row; matrix) {
        sumq += sumsq(row);
    }
    return sqrt(sum);
}


// Function to compute the rank of a matrix using the singular value decomposition
int rank(float matrix)(float[][] m, float[][] n) {
    int m = matrix;
    int n = matrix;

    float[][] u = new float[m][m];
    float[][] vh = new float[n][n];
    float[] singularValues = new float[min(m, n)];

    svd(matrix, u, singularValues, vh);

    int rank = 0;
    foreach (singularValue; singularValues) {
        if (singularValue > 1e-6) {
            ++rank;
        }
    }

    return rank;
}


// Function to compute the truncated singular value decomposition
void svd(float matrix, float u, float singularValues, float vh)(double m) {
    m = matrix;
    n = matrix;

    float[][] a = matrix.dup;
    float[] work = new float[n];
    int lwork = max(3*n, 5*min(m, n));
    float[] rwork = new float[lwork];

    int info;
    svd_(&m, &n, a.ptr, &m, singularValues.ptr, u.ptr, &m, vh.ptr, &n, work.ptr
    , &lwork, rwork.ptr, &info);

    if (info != 0) {
        throw new Exception("Error in svd: " ~ info);
    }
    // Transpose vh
    transpose(vh);
}


void transpose(float matrix)(double m, double n) {
    m = matrix;
    n = matrix;

    foreach (i, row; matrix) {
        foreach (j, element; row) {
            matrix[j][i] = element;
        }
    }
}


// Function to compute the best rank k approximation to a matrix
float[][] bestRankKApproximation(float matrix, int k)(double m, double n) {
    m = matrix;
    n = matrix;

    float[][] u = new float[m][m];
    float[][] vh = new float[n][n];
    float[] singularValues = new float[min(m, n)];

    svd(matrix, u, singularValues, vh);
    float[][] approximation = new float[m][k];

    foreach (i; 0..k) {
        float[] vector = new float[n];
        foreach (j; 0..n) {
            vector[j] = u[i][j] * singularValues[i];
        }
        approximation.each!(row => row[i] = vector[row - 1]);
    }
    return approximation;
}


void main() {
    float[][] matrix = [
        [1.0, 2.0, 3.0],
        [4.0, 5.0, 6.0],
        [7.0, 8.0, 9.0]
    ];
    int k = 2;

    float[][] rank;
}
