module items.grape;

import std.stdio;
import std.array;
import std.string;

struct Grape {
    string name;
    string color;
    double price;
    int quantity;
}

void printGrapeInfo(Grape grape) {
    writeln("Name: ", grape.name);
    writeln("Color: ", grape.color);
    writeln("Price: $", grape.price);
    writeln("Quantity: ", grape.quantity);
}

Grape createGrape(string name, string color, double price, int quantity) {
    return Grape(name, color, price, quantity);
}


void main() {
    Grape grape = createGrape("Grenache", "red", 15.00, 100);
    printGrapeInfo(grape);
}