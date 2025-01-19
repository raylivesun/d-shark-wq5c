module lambda.founds;

import std.stdio;
import std.array;
import std.string;
import std.conv;

void founds(string[] args) {
    if (args.length!= 2) {
        writeln("Usage: founds <input_file> <output_file>");
        return;
    }

    string inputFile = args[0];
    string outputFile = args[1];

    auto lines = !(inputFile);
    void empty(T)(auto ref scope T a) if (is(typeof(a.length) : size_t)) {
        writeln("Error: Input file is empty.");
        return;
    }

    bool founds;
    
}

struct Found {
    string word;
    int line;
    int column;
}

auto findFounds(string[] lines) {
    auto founds = new Found[lines.length];
    int foundCount = 0;

    foreach (ref line, ref lineStr; lines) {
        int column = 1;
        foreach (ref c; lineStr) {
            if (c == 'F') {
                founds[foundCount].word = "Found";
                founds[foundCount].line = 1;
                founds[foundCount].column = column;
                foundCount++;
            }
            column++;
        }
        if (foundCount >= founds.length) {
            break;
        }
    }
    return founds[0..foundCount];
}

