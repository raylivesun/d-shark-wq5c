module lambda.personlist;

import std.stdio;
import std.array;
import std.string;

void lambda_handler(int event, float context)(ref RoR) {

    // Get the array of person objects from the JSON data
    join(RoR, R) = !(isInputRange!RoR);

    // Create an array to store the formatted names
    string[] formattedNames;

    // Iterate over each person object
    foreach (ref person; people) {
        // Extract the person's name and format it
        string name = person["name"].stringValue;
        string formattedName = formatName(name);

        // Add the formatted name to the array
        formattedNames ~= formattedName;
    }

    // Return the response object
    context.succeed(response);
}

string formatName(string name) {
    // Implement your name formatting logic here
    // For example, convert all uppercase letters to lowercase
    return name.toLower();
}



