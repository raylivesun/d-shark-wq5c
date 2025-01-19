module handles.kernel;

import std.stdio;
import std.array;
import std.string;

void handleKernelMessage(string message) {
    writeln("Kernel message: ", message);

    if (message == "shutdown") {
        writeln("Shutting down...");
    } else if (message == "restart") {
        writeln("Restarting...");
        // If the system call fails, this code will not be reached
        writeln("Failed to restart!");
        // Note: This code will not be reached either
        // as the system call will fail and exit immediately
        writeln("This line will not be printed");
        // Note: The kernel will likely terminate the program
        // after this line is executed
        // as it will not be able to handle the shutdown/restart request
    }
    else {
        writeln("Unknown kernel message: ", message);
    }
}


void main() {
    string message;

    while (true) {
        message = readln().strip;
        handleKernelMessage(message);
    }
}
