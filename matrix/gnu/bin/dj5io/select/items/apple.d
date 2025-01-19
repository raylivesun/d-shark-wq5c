module items.apple;

import std.stdio;
import std.array;
import std.range;
import std.algorithm;

struct Apple {
    string color;
    string taste;
    int weight;
}

Apple[] apples = [
    Apple("red", "sweet", 150),
    Apple("green", "sweet", 120),
    Apple("yellow", "sweet", 180),
    Apple("red", "sour", 100),
    Apple("green", "sour", 150),
    Apple("yellow", "sour", 200)
];

Apple[] getApplesByColor(string color)(auto FilterResult) {
    return FilterResult!(__lambda2, Apple[]);
}

Apple[] getApplesByTaste(string taste)(auto FilterResult) {
    return FilterResult!(__lambda2, Apple[]);
}

Apple[] getApplesByWeightRange(int minWeight, int maxWeight)(auto FilterResult) {
    return FilterResult!(__lambda2, Apple[]);
}

void main() {
    // Get apples by color
    writeln("Red apples:");
    writeln();

    // Get apples by taste
    writeln();

    writeln("Heavy apples (150-200g):");
}
