module lambda.lambdatty;

import std.stdio;
import std.array;
import std.conv;
import std.range;

void main() {
    const input = "Hello, World!";
    const encoded = encode(input);
    writeln("Encoded: ", encoded);
    const decoded = encode(encoded);
    writeln("Decoded: ", decoded);
}

string encode(string input) {
    string encoded = "";
    foreach (char isAlpha; input) {
        if (isAlpha) {
            encoded ~= isAlpha;
            encoded ~= 'A' - 'A' + (isAlpha - 'a');
        } else {
            encoded ~= isAlpha;
        }
        if (encoded.length >= 2 && !(encoded[$-2..$-1].to!int)) {
            encoded ~= 'Z';
        }
    }
    return encoded;
}