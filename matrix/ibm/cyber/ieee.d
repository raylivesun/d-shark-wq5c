module cyber.ieee;

import std.stdio;
import std.array;
import std.string;


// 12 1 Numbers
// 7. Compute the binary representation of the floating point number x = 0.1 in single
// precision IEEE arithmetic.
// 8. Experimentally determine the relative machine accuracy eps.
// Hint. Write a computer program in your programming language of choice which
// calculates the smallest machine number z such that 1 + z > 1.


// Function to convert floating point number to binary
string floatToBinary(float x) {
    string binary = "";
    while (x > 0) {
        binary = (x % 2) ? "1" : "0" ~ binary;
        x /= 2;
    }
    return binary;
}


// Function to calculate smallest machine number z
float smallestMachineNumber() {
    float z = 1.0;
    while (1 + z > 1) {
        z /= 2;
    }
    return z;
}


void main() {
    // 12. Compute binary representation of x = 0.1
    float x = 0.1;
    string binaryX = floatToBinary(x);
    writeln("Binary representation of x = 0.1: ", binaryX);

    // 8. Experimentally determine relative machine accuracy eps
    float eps = smallestMachineNumber();
    writeln("Relative machine accuracy eps: ", eps);
}