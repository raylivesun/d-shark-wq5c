module items.setlist;

import std.stdio;
import std.array;
import std.string;

void setList(in string[] items)
{
    const maxItems = 10;

    if (items.length > maxItems)
    {
        writeln("Error: Maximum number of items exceeded.");
        return;
    }

    writeln("Setting list to: ", items.join(", "));
}

void main(){
    string[] items = ["apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "kiwi", "lemon", "mango"];
    setList(items);
}

