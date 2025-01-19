module path.cybersecurity;

import std.stdio;
import std.array;
import std.string;
import std.algorithm;
import std.math;
import std.bigint;


/**
Theorem 2.1.4 (Eckart-Young) argmin kM − Bk =
rank(B)≤k
Pk
T
i=1 σi ui vi
Again let Mk be the best rank k approximation. Then kM − Mk k = σk+1 . As a
quick check, if k ≥ r then σk+1 = 0 and the best rank k approximation is exact and
has no error (as it should). You should think of this as something you can do with
any algorithm for computing the singular value decomposition of M – you can find
the best rank k approximation to it with respect to any rotationally invariant norm.
In fact, it is remarkable that the best rank k approximation in many different norms
coincides! Moreover the best rank k approximation to M can be obtained directly
from its best rank k + 1 approximation. This is not always the case, as we will see
in the next chapter when we work with tensors.
*/
void eckartYoungTheorem(const char M, int k, char B, int U, char Vt)(double Matrix) {
    // Compute the singular value decomposition of M
    [U, s, Vt] = svd(M);

    // Compute the best rank k approximation
    Matrix B = U[0..k] * diagmat(s[0..k]) * Vt[0..k];

    // Compute the error
    Matrix Mk = B * U[0..k] * diagmat(s[0..k]) * Vt[0..k];
    Matrix error = M - Mk;

    // Print the results
    writefln("Singular values: %s", s);
    writefln("Best rank %d approximation: %s", k, B);
    writefln("Error: %s", error);
}

void main(){
    // Define the matrix M
    double[] M = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0];
    int k = 2; // Rank of the approximation
}
