module handles.history;

import std.stdio;
import std.array;
import std.string;

struct History {
    int index;
    string[] entries;

    this(int capacity) {
        index = 0;
        entries = new string[capacity];
    }

    void addEntry(string entry) {
        if (index >= entries.length) {
            // Shift existing entries one position to the right
            entries[1..$] = entries[0..$-1];
        }
        entries[0] = entry;
        index++;
    }

    string getPreviousEntry() {
        if (index <= 0) {
            return null;
        }
        return entries[--index];
    }

    string getNextEntry() {
        if (index >= entries.length) {
            return null;
        }
        return entries[++index];
    }
    void clear() {
        index = 0;
        entries.length = 0;
    }
}

void main() {
    History history = History(5);

    history.addEntry("Command 1");
    history.addEntry("Command 2");
    history.addEntry("Command 3");
    history.addEntry("Command 4");
    history.addEntry("Command 5");
    writeln("Current entry: ", history.entries[0]); // Command 5

    writeln("Previous entry: ", history.getPreviousEntry()); // Command 4
    writeln("Next entry: ", history.getNextEntry()); // Command 5

    history.clear();
    writeln("Current entry: ", history.entries[0]); // null
}

