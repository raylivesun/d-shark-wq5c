module lambda.ttyterm;

import std.stdio;
import std.array;
import std.process;

void main() {
    auto args = "ttyterm";
    args ~= "-geometry";
    args ~= "120x40";
    args ~= "-xterm";
    args ~= "-title";
    args ~= "ttyterm";
    args ~= "-e";
    args ~= "bash";
    args ~= "-c";
    args ~= "TERM=xterm-256color bash";
}

