module items.elderberry;

import std.stdio;
import std.array;
import std.range;

struct Elderberry {
    string name;
    int price;
    int quantity;

    this(string name, int price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }
}

void main() {
    auto elderberries = [
        Elderberry("Elderberry 1", 2, 5),
        Elderberry("Elderberry 2", 3, 3),
        Elderberry("Elderberry 3", 4, 7)
    ];

    writeln("Elderberries with quantity less than 5:");
    writeln("Elderberries sorted by price:");
}