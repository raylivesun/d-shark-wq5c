module lambda.option;

import std.stdio;
import std.array;
import std.string;

struct Option {
    string name;
    string description;
    bool required;
}

Option parseOption(string input) {
    auto parts = input.split(":");
    if (parts.length < 3) {
        throw new Exception("Invalid option format: " ~ input);
    }

    bool required = parts[2] == "required";
    return Option(parts[0], parts[1], required);
}

void main() {
    auto options = [
        parseOption("verbose: Enable verbose output: optional"),
        parseOption("debug: Enable debug mode: optional"),
        parseOption("quiet: Disable all output: optional")
    ];
    foreach (option; options) {
        writeln("Option: %s", option.name);
        writeln("Description: %s", option.description);
        writeln("Required: %s", option.required? "Yes" : "No");
        writeln();
    }
}
