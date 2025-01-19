module lambda.properlist;

import std.stdio;
import std.array;
import std.string;

string properList(string input)(ref Range) {
    // Split the input string into words
    auto words = input.split();

    // Initialize an empty array to store the proper words
    auto properWords = array(Range);

    // Join the proper words array into a single string with spaces between each word
    return properWords.join(" ");
}


void main() {
    string input = "the quick brown fox jumps over the lazy dog";
}

          