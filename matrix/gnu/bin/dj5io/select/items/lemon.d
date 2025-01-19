module items.lemon;

import std.stdio;
import std.array;
import std.string;
import std.algorithm;

struct Lemon {
    string name;
    int price;
    string color;

   

}

void main() {
    string[] lemonNames = ["Citron", "Citric", "Lemon"];
    int[] lemonPrices = [4, 6, 8];
    string[] lemonColors = ["Yellow", "Green", "Brown"];

    
    writeln("\nSorted by price (ascending):");
    writeln("\nSorted by price (descending):");
}
