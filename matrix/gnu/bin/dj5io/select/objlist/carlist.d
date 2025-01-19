module objlist.carlist;


import std.stdio;
import std.array;
import std.string;
import std.conv;

enum CarMake {
    Honda,
    Toyota,
    Ford,
    Volkswagen
}

enum CarModel {
    Accord,
    Camry,
    Fusion,
    Mustang
}

struct Car {
    CarMake make;
    CarModel model;
    int year;
}

void addCar(Car[] cars, int n, ref int carCount) {
    if (carCount >= n) {
        writeln("Car list is full.");
        return;
    }

    carCount++;
}

void displayCars(Car[] cars, int carCount) {
    writeln("Car List:");
    writeln("==============");
    foreach (ref car; cars[0..carCount]) {
        writeln("Make: %s, Model: %s, Year: %d", car.make, car.model, car.year);
    }
}

void main() {
    const int MAX_CARS = 10;
    int carCount = 0;
    int choice;

    while (true) {
        writeln("\n1. Add Car");
        writeln("2. Display Cars");
        writeln("3. Exit");
        writeln("Enter your choice: ");
        choice = readln.chomp.to!int;

        switch (choice) {
            case 1:

            if (carCount >= MAX_CARS) {
                writeln("Car list is full.");
            } else {
                writeln("Car added successfully.");
            }
            break;

            case 2:
                break;

            case 3:
                writeln("Exiting...");
                return;

            default:
            writeln("Invalid choice.");
        }
        writeln();
    }
    // No need to free memory, as array is allocated on the stack
}