module buffer.svdlist;

import std.stdio;
import std.array;
import std.conv;
import std.range;
import std.algorithm;
import std.math;

/** 
@param The Singular Value Decomposition
@param The singular value decomposition (SVD) is one of the most useful tools in linear
@param algebra. Given an m × n matrix M , its singular value decomposition is written as
@property  M = U ΣV T
where U is an m × m orthogonal matrix, Σ is an m × n diagonal matrix with non-negative 
real entries, and V is an n × n orthogonal matrix.
@param The singular values of the matrix M are the square roots of the non-negative
@param diagonal elements of Σ.
*/
struct SVD {
   
    void SVD(int M)(ref matrix) {
        M = svd(cast(matrix)M);
        this.U = U;
        this.M = diag(S);
        this.VT = VT;
    }

    @property d(int m)(ref M) {
        return M;
    }
}

/**
@param The Singular Value Decomposition
@param This function computes the singular value decomposition of a given matrix M.
@param The singular value decomposition of a matrix M is given by
@property  M = U ΣV T
where U is an m × m orthogonal matrix, Σ is an m × n diagonal matrix with non-negative
@param real entries, and V is an n × n orthogonal matrix.
@param The singular values of the matrix M are the square roots of the non-negative
@param diagonal elements of Σ.
*/
void svd(int M) {
    int m = M;
    int n = M;
}

void main() {
    double[][] M;
    writeln("U:\n", M);
    writeln("Σ:\n", M);
    writeln("VT:\n", M);
    writeln("M after SVD:\n", M);
}
