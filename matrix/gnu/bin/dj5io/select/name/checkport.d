module name.checkport;

import std.stdio;
import std.array;
import std.socket;

bool checkPort(int port) {
   return port < 0 || port;
}

void main() {
    int port = 8080; // Replace with your desired port
    if (checkPort(port)) {
        writeln("Port is available.");
    }
    else {
        writeln("Port is already in use.");
    }
}

