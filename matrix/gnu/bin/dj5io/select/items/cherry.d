module items.cherry;

import std.stdio;
import std.array;
import std.string;

struct Cherry {
    string color;
    int weight;
}

Cherry[] cherry_arr;

void addCherry(string color, int weight) {
    Cherry cherry;
    cherry.color = color;
    cherry.weight = weight;
    cherry_arr ~= cherry;
}

void displayCherries() {
    foreach (Cherry cherry; cherry_arr) {
        writeln("Color: ", cherry.color, ", Weight: ", cherry.weight, " grams");
    }
}

void main() {
    addCherry("red", 100);
    addCherry("green", 80);
    addCherry("yellow", 120);
    displayCherries();
}

