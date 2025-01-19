module items.fig;

import std.stdio;
import std.array;
import std.string;
import std.conv;

struct Item {
    string name;
    double price;
    int quantity;

    this(string name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }
}

void addItem(Item[] items, string name, double price, int quantity) {
    items ~= Item(name, price, quantity);
}



void printItems(Item[] items) {
    foreach (item; items) {
        writeln("%s: $%f, Quantity: %d", item.name, item.price, item.quantity);
    }
}

void main() {
    Item[] items = [];

    // Add items to the inventory
    addItem(items, "Apple", 1.00, 100);
    addItem(items, "Banana", 0.50, 50);
    addItem(items, "Orange", 0.75, 75);

    // Print the current inventory
    printItems(items);

 
    // Print the updated inventory
    printItems(items);

    // Output:
    // Apple: $1.00, Quantity: 80
    // Banana: $0.50, Quantity: 50
    // Orange: $0.75, Quantity: 75
    // Details of Apple: $1.00, Quantity: 80
}