module items.banana;

import std.stdio;
import std.array;
import std.range;
import std.algorithm;

struct Banana {
    string color;
    double weight;
    int ripeness;
}

Banana[] createBananaArray(int count) {
    Banana[] bananaArray = new Banana[count];
    foreach (ref banana; bananaArray) {
        banana.color = "yellow";
        banana.weight = 0.5;
        banana.ripeness = 5;
    }
    return bananaArray;
}


void main() {
    int bananaCount = 10;
    Banana[] bananaArray = createBananaArray(bananaCount);
    writefln("Original banana array: %(%s)%n", bananaArray);

    string colorFilter = "yellow";
    int minRipenessFilter = 5;
}
