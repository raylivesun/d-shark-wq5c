module handles.buffer;

import std.stdio;
import std.array;
import std.string;
import std.conv;

/// Handles a buffer of bytes.
struct Buffer {
   ubyte[] data;

    /// Constructs a new Buffer with the given initial data.
    this(ubyte[] data) {
        this.data = data;
    }

    /// Writes the given bytes to the buffer.
    void write(ubyte[] bytes) {
        data ~= bytes;
    }

    /// Reads and returns the next byte from the buffer.
    ubyte readByte() {
        if (data.length == 0) throw new Exception("Buffer underflow");
        return data[0];
    }

    /// Reads and returns a string from the buffer.
    string readString() {
        auto len = readU16();
        if (data.length < len) throw new Exception("Buffer underflow");
        auto str = to!string(data[0..len]);
        data = data[len..$];
        return str;
    }

    /// Reads and returns a 16-bit unsigned integer from the buffer.
    uint readU16() {
        auto a = readByte();
        auto b = readByte();
        return (uint(a) << 8) | uint(b);
    }
    /// Reads and returns a 32-bit unsigned integer from the buffer.
    uint readU32() {
        auto a = readByte();
        auto b = readByte();
        auto c = readByte();
        auto d = readByte();
        return (uint(a) << 24) | (uint(b) << 16) | (uint(c) << 8) | uint(d);
    }
    /// Reads and returns a 64-bit unsigned integer from the buffer.
    ulong readU64() {
        auto a = readByte();
        auto b = readByte();
        auto c = readByte();
        auto d = readByte();
        auto e = readByte();
        auto f = readByte();
        auto g = readByte();
        auto h = readByte();
        return (ulong(a) << 56) | (ulong(b) << 48) | (ulong(c) << 40) | (ulong(d));
    }
    /// Reads and returns a float from the buffer.
    float readFloat() {
        return readU32.to!float;
    }
    /// Reads and returns a double from the buffer.
    double readDouble() {
        return readU64.to!double;
    }
}
