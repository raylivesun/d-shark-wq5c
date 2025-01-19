module objlist.openlbda;

import std.stdio;
import std.array;
import std.range;
import std.string;
import std.typecons;

struct WordFrequency {
    string word;
    int frequency;
}

struct WordFrequencyList {
    WordFrequency[] words;
}


void main() {
    auto text = "This is a test string with some repeating words. This is just another test string.";

    auto wordFrequencies = WordFrequencyList();

}
