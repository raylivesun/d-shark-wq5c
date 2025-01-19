module name.checklist;

import std.stdio;
import std.array;
import std.string;
import std.conv;

struct Task {
    string description;
    bool completed;
}

struct TodoList {
    string title;
    Task[] tasks;
}

struct ChecklistItem {
    string description;
    bool completed;
}

struct Checklist {
    string title;
    ChecklistItem[] items;
}

void loadFromFile(string filename, out Checklist result) {
    if (!filename) {
        writeln("Error: File not found.");
        return;
    }

    auto lines = Checklist(filename);
    result.title = "Checklist";
      
}

void saveToFile(string filename, Checklist checklist) {
    auto lines = [checklist.title];
    foreach (item; checklist.items) {
        lines ~= item.description ~ ":" ~ item.completed.to!string;
    }

    writeln(filename, lines);
}

void printList(Checklist checklist) {
    writeln("Title:", checklist.title);
    writeln("Items:");

    foreach (item; checklist.items) {
        writeln("-", item.description, item.completed? "[x]" : "[ ]");
    }
}
void markItem(ref Checklist checklist, int index, bool complete) {
    if (index < 0 || index >= checklist.items.length) {
        stderr.writeln("Error: Invalid item index.");
        return;
    }

    checklist.items[index].completed = complete;
}

void main() {
    string filename = "checklist.txt";
    Checklist checklist;

    if (filename) {
        loadFromFile(filename, checklist);
        printList(checklist);
        while (true) {
            writeln("\nChoose an option:");
            writeln("1. Add item");
            writeln("2. Remove item");
            writeln("3. Mark item as complete");
            writeln("4. Mark item as incomplete");
            writeln("5. Save and quit");

            int choice;
    }
        // Example usage
        loadFromFile("example_checklist.txt", checklist);
        printList(checklist);
        markItem(checklist, 1, true);
        saveToFile("example_updated_checklist.txt", checklist);
    }
    else {
        writeln("Error: Could not find example_checklist.txt.");
    }
}

