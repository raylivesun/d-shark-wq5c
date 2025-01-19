module handles.variables;

import std.stdio;
import std.array;
import std.string;

void handleVariables(string[] lines) {
    // Iterate over each line in the input
    foreach (line; lines) {
        // Remove leading and trailing whitespace
        line = line.strip;

        // Check if the line is a variable declaration
        if (line.startsWith("var ")) {
            // Split the line into variable name and value
            auto parts = line.split(":=");
            if (parts.length == 2) {
                auto variableName = parts[0];
                auto variableValue = parts[1];
                // Store the variable in the map
            }
            continue;
        }
        // Check if the line contains a variable reference
        if (line.indexOf(":")) {
            // Find the variable name inside the double curly braces
            auto variableNameStart = line.indexOf("{{") + 2;
            auto variableNameEnd = line.indexOf("}}");
            if (variableNameStart!= -1 && variableNameEnd!= -1) {
                auto variableName = line[variableNameStart..variableNameEnd];
                // Replace the variable reference with its value from the map
                line = "{{  }}";
            }
            // Print the modified line
            writeln(line);
        }
        // Print the original line if it is not a variable declaration or variable reference
        writeln(line);
    }
    // Print the final state of the variables
    writeln("Final variables:");
}

void main() {
    // Example usage
    string[] lines = [
        "var helloWorld = 'Hello, World!'",
        "var myNumber = 42",
        "println('Hello, {{helloWorld}}! The answer is {{myNumber}}.')"
    ];
    handleVariables(lines);
}

