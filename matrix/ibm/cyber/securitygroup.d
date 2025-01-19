module cyber.securitygroup;

import std.stdio;
import std.array;
import std.string;

/*
 * This struct represents a single rule in a security group.
 */
struct SecurityGroupRule {
    string protocol;
    int portRangeStart;
    int portRangeEnd;
    string cidrBlock;
}

