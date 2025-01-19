module name.items;

import std.stdio;
import std.array;
import std.string;

/// Parses a given string into a key-value pair
void parseKeyValuePair(string line)
{
    auto parts = line.split(":");
    if (parts.length!= 2)
        throw new Exception("Invalid key-value pair format");

    // Example usage
    string input = "name: John Doe\nage: 30\ncity: New York";
}

/// Parses a given string into key-value pairs


int main()
{
    return 0;
}


