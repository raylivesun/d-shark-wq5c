module system.develop;

import std.stdio;
import std.array;
import std.string;

void main() {
    string input = "Hello, World!";
    string[] words = input.split(" ");

    foreach (ref word; words) {
        word = word.toUpper;
    }

    writeln(words);
}
