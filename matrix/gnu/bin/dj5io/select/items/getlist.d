module items.getlist;

import std.stdio;
import std.array;
import std.string;
import std.conv;
import std.algorithm;

// Define the Item struct
struct Item {
    string id;
    string name;
    double price;
}

// Function to parse a line of text into an Item
Item parseItem(string line) {
    auto parts = line.split(" ");
    return Item(parts[0], parts[1], parts[2].to!double);
}

