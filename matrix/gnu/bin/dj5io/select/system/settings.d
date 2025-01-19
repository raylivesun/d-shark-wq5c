module system.settings;

import std.stdio;
import std.array;
import std.string;
import std.conv;

struct Settings {
    string apiKey;
    string apiSecret;
    string apiBaseUrl;
    string accessToken;
    string refreshToken;
    int expiresIn;
    int lastUpdated;
}

void loadSettings(string[] lines, ref Settings settings) {
    foreach (line; lines) {
        auto parts = line.split(":");
        if (parts.length == 2) {
            string key = parts[0].strip();
            string value = parts[1].strip();

            final switch (key) {
                case "API_KEY":
                    settings.apiKey = value;
                    break;
                case "API_SECRET":
                    settings.apiSecret = value;
                    break;
                case "API_BASE_URL":
                    settings.apiBaseUrl = value;
                    break;
                    case "ACCESS_TOKEN":
                    settings.accessToken = value;
                    break;
                    case "REFRESH_TOKEN":
                    settings.refreshToken = value;
                    break;
                    case "EXPIRES_IN":
                    settings.expiresIn = value.to!int;
                    break;
                    case "LAST_UPDATED":
                    settings.lastUpdated = value.to!int;
                    break;
            }
            // Handle any other settings as needed
        }
        else {
            writeln("Invalid line format: ", line);
        }
    }
    // Perform any additional processing or validation on the loaded settings
}

void saveSettings(Settings settings, string[] lines) {
    foreach (line; lines) {
        lines ~= line; // Append existing lines to the new array
    }
    lines ~= "API_KEY: " ~ settings.apiKey;
    lines ~= "API_SECRET: " ~ settings.apiSecret;
    lines ~= "API_BASE_URL: " ~ settings.apiBaseUrl;
    lines ~= "ACCESS_TOKEN: " ~ settings.accessToken;
    lines ~= "REFRESH_TOKEN: " ~ settings.refreshToken;
    lines ~= "EXPIRES_IN: " ~ settings.expiresIn.to!string;
    lines ~= "LAST_UPDATED: " ~ settings.lastUpdated.to!string;
    // Perform any additional processing or validation on the saved settings
}

// Example usage
void main() {
    string[] lines = [
        "API_KEY: YOUR_API_KEY",
        "API_SECRET: YOUR_API_SECRET",
        "API_BASE_URL: https://api.example.com",
        // Add more lines as needed
    ];
    Settings settings;
    loadSettings(lines, settings);

    // Modify the settings as needed
    settings.accessToken = "NEW_ACCESS_TOKEN";
    settings.refreshToken = "NEW_REFRESH_TOKEN";
    settings.expiresIn = 600; // Example expiration time in seconds

    // Save the modified settings
    saveSettings(settings, lines);

    // Perform any additional processing or validation on the saved settings
    // Example: Write the modified lines to a file or send them to the server
    writeln("Settings saved successfully!");
}
