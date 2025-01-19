module name.start;

import std.stdio;
import std.array;
import std.string;

// Function to convert a hexadecimal number to its decimal equivalent
int hexToDec(string hexNum) {
    int decimal = 0;
    int base = 1;
    hexNum = hexNum.toUpper(); // Convert to uppercase for case-insensitive comparison

    // Iterate through each digit of the hexadecimal number
    foreach (char digit; hexNum) {
        // Check if the digit is a hexadecimal digit (0-9, A-F)
        if (digit >= '0' && digit <= '9') {
            decimal += (digit - '0') * base;
            base *= 16;
        }
        else if (digit >= 'A' && digit <= 'F') {
            decimal += (digit - 'A' + 10) * base;
            base *= 16;
        }
        else {
            throw new Exception("Invalid hexadecimal digit: " ~ digit);
        }
    }
    return decimal;
}

int main() {
    string hexNum = "A5B";
    int decimal = hexToDec(hexNum);
    return 0;
}

