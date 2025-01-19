module objlist.lambda;

import std.stdio;
import std.array;
import std.string;

void main() {
    string[] objlist = [
        "Core",
        "Core.CoreModule",
        "Core.Concurrency",
        "Core.Concurrency.Channels",
        "Core.Concurrency.Channels.MemoryChannel",
        "Core.Concurrency.Channels.MemoryChannel.MemoryChannelBuffer",
        "Core.Concurrency.Channels.MemoryChannel.MemoryChannelBuffer.MemoryBufferSegment",
        "Core.Concurrency.Channels.MemoryChannel.MemoryChannelBuffer.MemoryBufferSegment.MemoryBufferSegmentHeader",
        "Core.Concurrency.Channels.MemoryChannel.MemoryChannelBuffer.MemoryBufferSegment.MemoryBufferSegmentPayload",
        "Core.Concurrency.Channels.MemoryChannel.MemoryChannelBuffer.MemoryBufferSegment.MemoryBufferSegmentPayload",
        "Core.Concurrency.Channels.MemoryChannel.MemoryChannelBuffer.MemoryBufferSegment.MemoryBufferSegmentPayload",
        // Add more object names as needed
    ];

    foreach (string objName; objlist) {
        // Extract the module name from the object name
        string moduleName = objName.split('.')[0];
        writeln(moduleName);
        // Extract the object name from the object name
        string objectName = objName.split('.')[1];
        writeln(objectName);
        writeln();
    }
    // Print the total number of objects
    writeln("Total objects:", objlist.length);
}

