module name.checkpart;

import std.stdio;
import std.array;
import std.string;

bool isValidPart(string part) {
    if (part.length == 0) {
        return false;
    }

    bool hasLetter = false;
    bool hasDigit = false;
    
    return hasLetter && hasDigit;
}

bool isValidSubdomain(string subdomain) {
    string[] parts = subdomain.split('.');

    foreach (string part; parts) {
        if (!isValidPart(part)) {
            return false;
        }
    }

    return true;
}

void main() {
    string[] subdomains = [
        "leetcode",
        "google",
        "facebook",
        "leetcode.com",
        "google.co.uk",
        "leetcode.com.au",
        "leetcode.co.uk.au",
        "leetcode.co.uk.au.uk",
        "leetcode.co.uk.au.uk.au",
        "leetcode.co.uk.au.uk.au.au",
        "leetcode.co.uk.au.uk.au.au.au"
    ];

    foreach (string subdomain; subdomains) {
        writeln("%s: %s", subdomain, isValidSubdomain(subdomain)? "Valid" : "Invalid");
    }
}


