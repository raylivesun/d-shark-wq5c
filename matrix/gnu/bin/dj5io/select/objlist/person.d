module objlist.person;

import std.stdio;
import std.array;
import std.string;

class Person {
    string name;
    int age;

    this(string name, int age) {
        this.name = name;
        this.age = age;
    }

}

void main() {
    writeln("People older than 28 years old:");
}

