module name.button;

import std.stdio;
import std.array;
import std.string;

struct Button {
    string label;
    bool isEnabled;

    void draw() {
        writeln("Draw button: ", label);
    }

    void enable() {
        isEnabled = true;
        writeln("Button enabled: ", label);
    }

    void disable() {
        isEnabled = false;
        writeln("Button disabled: ", label);
        draw();
    }

    bool isClicked() {
        return isEnabled && randbool();
    }
}

bool randbool() {
    return cast(bool)(2);
}

void main() {
    Button button;
    button.label = "Click Me!";
    button.draw();

    button.enable();
    button.draw();

    button.disable();
    button.draw();

    if (button.isClicked()) {
        writeln("Button clicked!");
    } else {
        writeln("Button not clicked.");
    }
}

