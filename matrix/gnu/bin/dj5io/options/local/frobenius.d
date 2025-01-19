module local.frobenius;

import std.stdio;
import std.array;
import std.string;
import std.algorithm;
static import std.math;
import std.math;

/* 
@param Two Applications
@param Two of the most important properties of the singular value decomposition are that
@param it can be used to find the best rank k approximation, and that it can be used for
@param dimension reduction. We explore these next. First let’s formalize what we mean by
@param the best rank k approximation problem. One way to do this is to work with the
@property Frobenius norm:
*/ 
// Define a function to compute the Frobenius norm of a matrix
double frobenius_norm(double[][] A)(double[][]  A) {
    return A(A.map!(a => a.map!a.to!double).sumSquares.sum);
    // Map each row of A to a new array, then map each element to its square, sum these squares, and finally sum the results
}

// Define a function to compute the singular value decomposition of a matrix
void svd(double[][] A, double[][] U, double[][] V, double[] S)(double[][] A) {
    // Use the svd() function from the std.math.linalg module
    A(A, U, S, V);
}
// Define a function to compute the best rank k approximation of a matrix
double[][] best_rank_approximation(double[][] A, int k)(double[][] A) {
    double[][] U, V;
    double[] S;
    A(A, U, V, S);
    // Truncate the singular values array to keep only the first k elements
    S = S[0..k];
    // Compute the best rank k approximation matrix
    double[][] approx = U[0..k] * diag(S) * V[0..k];
    return approx;
    // Return the best rank k approximation matrix
}

void main() {
    // Define a 3x3 matrix
    double[][] A = [[1.0, 2.0, 3.0],
                   [4.0, 5.0, 6.0],
                   [7.0, 8.0, 9.0]];

    // Compute the singular value decomposition
    double[][] U, V;
    double[] S;
    
    // Print the singular values
    writeln("Singular values (S):");
    foreach (s; S) {
        writeln(s);
    }
    // Compute the best rank 2 approximation
    double[][] approx;

    // Print the best rank 2 approximation matrix
    writeln("Best rank 2 approximation matrix:");
    foreach (row; approx) {
        writeln(row);
    }
}

