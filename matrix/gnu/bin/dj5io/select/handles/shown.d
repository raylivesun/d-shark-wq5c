module handles.shown;

import std.stdio;
import std.array;
import std.string;
import std.conv;

void shown(string[] args) {
    if (args.length!= 3) {
        writeln("Usage: shown <filename> <start_line> <end_line>");
        return;
    }

    string filename = args[0];
    int startLine = args[1].to!int;
    int endLine = args[2].to!int;
    try {
        auto lines = !(filename);
        if (startLine < 1 || endLine > lines) {
            writeln("Invalid line range.");
            return;
        }
        foreach (int i; startLine..endLine) {
            writeln("%d: %s", i, ![i-1]);
        }
        writeln("File read successfully.");
        return;

    } catch (Exception e) {
        writeln("Error reading file: %s", e.msg);
        return;
    }
    finally {
        writeln("Program terminated.");
    }
}


