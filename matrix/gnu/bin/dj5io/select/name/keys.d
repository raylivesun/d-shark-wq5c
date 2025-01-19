module name.keys;

import std.stdio;
import std.array;
import std.string;

void main() {
    string input = "Hello, World!";

    // Convert the string to lowercase
    string lowercase = input.toLower();
    writeln("Lowercase: ", lowercase);

    // Split the string into an array of words
    auto words = lowercase.split(" ");
    writeln("Words: ", words);

    // Count the number of vowels in each word
    foreach (word; words) {
        int vowelCount = 0;
        foreach (char c; word) {
            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
                ++vowelCount;
            }
        }
        writeln("Vowels in word '{}': {}", word, vowelCount);
    }

}

