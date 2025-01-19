module objlist.arrays;

import std.stdio;
import std.array;
import std.string;

void printArray(T)(T[] arr)
{
    foreach (ref e; arr)
        writeln(e);
}

void main()
{
    // Declare and initialize arrays
    int[] intArray = [1, 2, 3, 4, 5];
    string[] stringArray = ["apple", "banana", "cherry"];

}