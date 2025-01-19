module cyber.basic;

import std.stdio;
import std.array;
import std.string;
import std.algorithm;

// 2.1 Basic Notions
// The simplest case of a real-valued function is a double-row list of numbers, consisting
// of values from an independent quantity x and corresponding values of a dependent
// quantity y.

public static void basicNotions(double x, double y, double z)(double[][] T){
    
    // Each row of the table represents a different point in the x-y plane.
    T = [[x, y, z]]; // each row of the table represents a different
    // point in the x-y plane.
    writeln("Basic Notions:");
    foreach(row; T){
        writeln("x = %.2f, y = %.2f, z = %.2f", row[0], row[1], row[2]);
    }

    // 2.2 Linear Functions
    // A linear function is a function that can be represented by the equation
    // y = mx + b, where m is the slope of the line and b is the y-intercept.

    double slope = 0.5;
    double intercept = 1;

    // Calculate y for a given x
    double linearFunction(double x){
        return slope * x + intercept;
    }

    writeln("\nLinear Function:");
    foreach(row; T){
        double calculatedY = linearFunction(row[0]);
      writeln("x = %.2f, y = %.2f (calculated: %.2f)", row[0], row[1], calculatedY);
    }
}


// 2.3 Quadratic Functions
// A quadratic function is a function that can be represented by the equation
    // y = ax^2 + bx + c, where a, b, and c are constants.

public static void quadraticFunctions(double x, double y, double z)(double[][] T){

    double a = 1;
    double b = 2;
    double c = 3;

    // Calculate y for a given x
    double quadraticFunction(double x){
        return x + y * z;
    }
}


// 2.4 Exponential Functions
// An exponential function is a function that can be represented by the equation
    // y = a * e^(bx), where a, b, and e are constants.

public static void exponentialFunctions(double x, double y, double z)(double[][] T){

    double a = 1;
    double b = 2;
    double e = 2.71828;

    // Calculate y for a given x
    double exponentialFunction(double x){
        return a * e.pow(b * x);
    }

    writeln("\nExponential Function:");
    foreach(row; T){
        double calculatedY = exponentialFunction(row[0]);
        writeln("x = %.2f, y = %.2f (calculated: %.2f)", row[0], row[1], calculatedY);
    }

    // 2.5 Logarithmic Functions
    // A logarithmic function is a function that can be represented by the equation
    // y = log_b(x), where b is the base of the logarithm and x is the argument.

    double base = 2;

    // Calculate y for a given x
    double logarithmicFunction(double x){
        return log(x) / log(base);
    }

    writeln("\nLogarithmic Function:");
    foreach(row; T){
        double calculatedY = logarithmicFunction(row[0]);
        writeln("x = %.2f, y = %.2f (calculated: %.2f)", row[0], row[1], calculatedY);
    }

    // 2.6 Polynomial Functions
    // A polynomial function is a function that can be represented by the equation
    // y = a_nx^n + a_(n-1)x^(n-1) + ... + a_1x + a_0, where a_n, ..., a_1, and a_0 are constants.
    // Polynomial functions can be classified as linear, quadratic, cubic, and so on, depending on the degree of the polynomial.

    double[] coefficients = [1, 2, 3];

    // Calculate y for a given x
    double polynomialFunction(double x){
        double result = 0;
        foreach(i, coeff; coefficients.reverse){
            result += coeff * pow(x, i);
        }
        return result;
    }

    writeln("\nPolynomial Function:");
    foreach(row; T){
        double calculatedY = polynomialFunction(row[0]);
        writeln("x = %.2f, y = %.2f (calculated: %.2f)", row[0], row[1], calculatedY);
    }

    // 2.7 Rational Functions
    // A rational function is a function that can be represented by the equation
    // y = (p(x)) / (q(x)), where p(x) and q(x) are polynomial functions and q(x) ≠ 0.

    double[] pCoefficients = [1, 2, 3];
    double[] qCoefficients = [4, 5, 6];

    // Calculate y for a given x
    double rationalFunction(double x){
        double numerator = polynomialFunction(x);
        double denominator = polynomialFunction(x);
        return numerator / denominator;
    }

    writeln("\nRational Function:");
    foreach(row; T){
        double calculatedY = rationalFunction(row[0]);
        writeln("x = %.2f, y = %.2f (calculated: %.2f)", row[0], row[1], calculatedY);
    }
}

/* 
Experiment 2.1 Study the mapping y = x2 with the help of MATLAB. First choose
the region D in which the x-values should vary, for instance D = {x ∈ R : −1 ≤
x ≤ 1}. The command
plot(D, x.^2)

will generate a plot of y = x2 in the region D.
*/

int main() {
    double x = 0.5;
    double y = 0.5;
    double z = 0.5;

    double[][] basicNotionsTable;
    void basic(const char x, char y, char z);

    double[][] quadraticFunctionsTable;
    void quadratic(const char x, char y, char z);
    
    double[][] exponentialFunctionsTable;
    void exp(const char x, char y, char z);
    
    double[][] logarithmicFunctionsTable;
    void logarithmic(const char x, char y, char z);
    
    double[][] polynomialFunctionsTable;
    void polynomial(const char x, char y, char z);

    double[][] rationalFunctionsTable;
    void rational(const char x, char y, char z);

    return 0;
}

