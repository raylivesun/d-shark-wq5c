module handles.event;

import std.stdio;
import std.array;
import std.string;

void handleEvent(string eventType, string payload) {
    switch (eventType) {
        case "message":
            handleMessageEvent(payload);
            break;
        case "subscription":
            handleSubscriptionEvent(payload);
            break;
        default:
            writeln("Unknown event type: ", eventType);
    }
}

void handleMessageEvent(string payload) {
    auto parts = payload.split(":");
    if (parts.length == 2) {
        string message = parts[1];
        writeln("Received message: ", message);
    } else {
        writeln("Invalid message event payload: ", payload);
    }
}

void handleSubscriptionEvent(string payload) {
    auto parts = payload.split(":");
    if (parts.length == 2) {
        string topic = parts[0];
        string action = parts[1];
        writeln("Subscribed to topic: ", topic, ", action: ", action);
    } else {
        writeln("Invalid subscription event payload: ", payload);
    }
}


void main() {
    string eventType = "message";
    string payload = "message:Hello, World!";
    handleEvent(eventType, payload);

    eventType = "subscription";
    payload = "topic:news:world, action:subscribe";
    handleEvent(eventType, payload);
}
