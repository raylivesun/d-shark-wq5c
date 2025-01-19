module items.argslist;

import std.stdio;
import std.array;
import std.string;

void main() {
    string[] args = ["apple", "banana", "cherry", "date", "elderberry"];
    string[] result = argsList(args, 2, 4);

    foreach (item; result) {
        writeln(item);
    }
}

string[] argsList(string[] args, size_t start, size_t end) {
    if (start > end || end > args.length) {
        return [];
        // or throw an exception if you want to handle this case
    }
    return args[start..end];
}


