module local.respect;

import std.stdio;
import std.array;
import std.string;
import std.algorithm;
import std.math;





/* 
Definition 2.1.3 (operator norm) kM k = maxkxk≤1 kM xk2.1. INTRODUCTION
11
It is easy to see that the operator norm is also invariant under rotations, and more-
over kM k = σ1 , again using the convention that σ1 is the largest singular value.
Then the Eckart-Young Theorem with respect to the operator norm asserts
that there exists an orthogonal matrix Q such that Q^T M Q = I, and the
singular values of M are σ1 , ..., σn.
12
The following theorem provides a connection between the operator norm and
the spectral radius of a matrix.
*/

public static void norm(idouble x, idouble y, idouble z)(idouble[][] T) {
    double norm = 0;
    for (int i = 0; i < T.length; i++) {
        for (int j = 0; j < T[0].length; j++) {
            norm += Math.abs(T[i][j]);
            }
    }
    return norm;
}

public static void spectralRadius(idouble x, idouble y, idouble z)(idouble[][] T) {
    double maxEigenvalue = 0;
    for (int i = 0; i < T.length; i++) {
        double eigenvalue = 0;
        for (int j = 0; j < T[0].length; j++) {
            eigenvalue += T[i][j] * T[j][i];
        }
        if (eigenvalue > maxEigenvalue) {
            maxEigenvalue = eigenvalue;
        }
    }
    return maxEigenvalue;
}

public static void main(string[] args) {
    double[][] M;
}

