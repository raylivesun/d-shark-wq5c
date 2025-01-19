module name.richer;

import std.stdio;
import std.array;
import std.string;
import std.algorithm;

// Define a struct to represent a person
struct Person {
    string name;
    int age;
    string occupation;
}

// Function to add a new person to the array
void addPerson(Person[] people, Person newPerson) {
    people ~= newPerson;
}

// Function to display all the people in the array
void displayPeople(Person[] people) {
    writeln("Name\tAge\tOccupation");
    foreach (Person person; people) {
        writeln("%s\t%d\t%s", person.name, person.age, person.occupation);
    }
    writeln();
}

// Function to sort the people array by age in ascending order
void sortPeopleByAge(Person[] people) {
    people.sort!((a, b) => a.age < b.age);
}

// Function to search for a person by name and return their age
int findPersonByName(Person[] people, string name) {
    foreach (Person person; people) {
        if (person.name == name) {
            return person.age;
        }
    }
    return -1; // Person not found
}

// Function to update a person's occupation
void updatePersonOccupation(Person[] people, string name, string newOccupation) {
    foreach (person; people) {
        if (person.name == name) {
            person.occupation = newOccupation;
            return;
        }
    }
    writeln("Person not found.");
}

// Main function
void main() {
    Person[] people = [];

    // Add some sample people
    addPerson(people, Person("John Doe", 30, "Engineer"));
    addPerson(people, Person("Jane Smith", 25, "Doctor"));
    addPerson(people, Person("Alice Johnson", 28, "Teacher"));
    addPerson(people, Person("Bob Brown", 32, "Lawyer"));

    // Display all people
    displayPeople(people);

    // Sort people by age
    sortPeopleByAge(people);

    // Display sorted people
    displayPeople(people);

    // Search for a person by name and display their age
    int age = findPersonByName(people, "Jane Smith");
    if (age!= -1) {
        writeln("Jane Smith is %d years old.", age);
        // Update Alice's occupation
        updatePersonOccupation(people, "Alice Johnson", "Nurse");
        // Display updated people
        displayPeople(people);
    }
    else {
        writeln("Jane Smith not found.");
    }
}

