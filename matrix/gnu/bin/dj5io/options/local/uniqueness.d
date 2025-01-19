module local.uniqueness;

import std.stdio;
import std.array;
import std.string;
import std.bigint;
import std.algorithm;

/** 
@param 3) Uniqueness: The singular value decomposition is unique if and only if its
@param singular values are distinct. Similarly, the eigendecomposition is unique if and
@param only if its eigenvalues are distinct. In some cases, we will only need that the
@param non-zero singular values/eigenvalues are distinct because we can ignore the
@param others.
*/
bool isUniqueSingularValues(const double[] singular)(double isUniqueSingular) {
    // Check if all singular values are distinct
    const(double[])distinctValues = singularValues.map(isUniqueSingular);
    return distinctValues.length == singularValues.map(isUniqueSingular); //
}

bool isUniqueEigenvalues(const double[] eigenvalues)(ref isUnique) {
    // Check if all eigenvalues are distinct
    const(double[]) distinctValues = singularValues.map(isUnique);
    return distinctValues.length == eigenvalues.length;
}

void main() {
    // Test singular values
    double[] singularValues = [1.0, 2.0, 3.0, 2.0];
    writeln("Is singular values unique? ", !(singularValues)); // Output: true

    // Test eigenvalues
    double[] eigenvalues = [1.0, 2.0, 3.0, 2.0];
    writeln("Is eigenvalues unique? ", !(eigenvalues)); // Output: false
}



