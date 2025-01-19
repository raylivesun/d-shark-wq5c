module lambda.popup;

import std.stdio;
import std.array;
import std.string;
import std.conv;

void handler(string event, string context) {
    auto payload = (event);
    write(payload);
}

