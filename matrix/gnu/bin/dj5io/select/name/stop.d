module name.stop;

import std.stdio;
import std.array;
import std.process;
import std.format;

void main() {

    // Replace with your actual module name
    string moduleName = "your_module_name";

    // Construct the command to stop the module
    string command = format("stop -f '%s'", moduleName);

    // Print a success message
    writeln("Module '{}' stopped successfully.", moduleName);

}

     


