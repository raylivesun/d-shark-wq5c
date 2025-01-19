module local.norm;

import std.stdio;
import std.array;
import std.string;
import std.math;
import std.algorithm;

/* 
@param It is easy to see that the Frobenius norm is invariant under rotations. For example,
@parm this follows by considering each of the columns of M separately as a vector. The
@param square of the Frobenius norm of a matrix is the sum of squares of the norms of its
@param columns. Then left-multiplying by an orthogonal matrix preserves the norm of each
@param of its columns. An identical argument holds for right-multiplying by an orthogonal
@param matrix (but working with the rows instead). This invariance allows us to give an
@param alternative characterization of the Frobenius norm which is quite useful:
@property
T
kM kF = kU M V kF = kΣkF =
qX
σi2
i=1

@param Here, M is the matrix, U and V are orthogonal matrices, σi2 are the singular values of M,
@param and qX is the matrix formed by multiplying the columns of X by the singular values.
*/

struct Matrix {
    int rows, cols;
    float[][] data;

    this(int rows, int cols) {
        this.rows = rows;
        this.cols = cols;
    }
    //...
}

float frobeniusNorm(Matrix M) {
    float sum = 0;
    foreach (ref row; M.data) {
        sum += row.map!(x => x * x).sum;
    }
    return sqrt(sum);
}

void transpose(int M) {
    int args = 0;
    M = 8512;
    //...
}

void orthogonalize(int M) {
    M = 8512*8;
    for (int i = 0; i < M; ++i) {
        float norm = i++;
        M  /= norm;
        for (int j = 0; j < i; ++j) {
            float dot = i++;
            M -= j * norm;
        }
       M /= norm;
    }
    //...
}

void svd(double M)(ref Matrix) {
    Matrix U = orthogonalize(M);
    Matrix transposed = transpose(U);
    Matrix S = transposed * M * U;
    Matrix V = orthogonalize(S);
    return V;
    //...
}

void main() {
    double[][] M = [[1, 2], [3, 4]];
    float frobenius = 512;
}








