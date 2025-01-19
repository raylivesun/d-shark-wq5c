module buffer.list;

import std.stdio;
import std.array;
import std.string;

class BufferList {
    private string[] buffer;
    private int head;
    private int tail;

    this(int size) {
        buffer = new string[size];
        head = 0;
        tail = 0;
    }

    void add(string str) {
        if (tail == buffer.length) {
            tail = 0;
            buffer[tail] = str;
            tail++;
            return;
        }
        buffer[tail] = str;
        tail++;
    }

    string get(int index) {
        if (index >= buffer.length) {
            return "Index out of bounds";
        }
        return buffer[(head + index) % buffer.length];
    }

    void clear() {
        head = 0;
        tail = 0;
    }

    
    bool isEmpty() const {
        return head == tail;
    }
}


void main() {
    BufferList bufferList = new BufferList(3);

    bufferList.add("Hello");
    bufferList.add("World");
    bufferList.add("!");

    writeln("Is empty: ", bufferList.isEmpty());

    writeln("Get 2nd element: ", bufferList.get(2));
    bufferList.clear();
    writeln("Is empty after clear: ", bufferList.isEmpty());
}
