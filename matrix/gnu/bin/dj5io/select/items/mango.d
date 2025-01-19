module items.mango;

import std.stdio;
import std.array;
import std.string;
import std.range;

struct Item {
    string name;
    int quantity;
    double price;

    @property string nameLower() {
        return name.toLower();
    }
    @property double pricePerUnit() {
        return price / quantity;
    }

    
    void print() {
        writeln("Item: $name");
        writeln("Quantity: $quantity");
        writeln("Price per unit: $pricePerUnit");
    }

}

struct Inventory {
    private Item[] items;
}
