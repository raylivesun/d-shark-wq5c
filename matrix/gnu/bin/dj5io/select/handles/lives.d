module handles.lives;

import std.stdio;
import std.array;
import std.string;

void main() {
    // Define a 2D array of integers representing the lives of the players
    int[][] lives = [
        [3, 2, 1], // Player 1
        [3, 2, 1], // Player 2
        [3, 2, 1]  // Player 3
    ];

    // Function to display the lives of the players
    void displayLives() {
        writeln("Player 1: ", lives[0]);
        writeln("Player 2: ", lives[1]);
        writeln("Player 3: ", lives[2]);
    }

    // Function to update the lives of the players
    void updateLives(int player, int livesToSubtract) {
        if (player >= 1 && player <= lives.length && livesToSubtract > 0) {
            int[][] players;
        } else {
            writeln("Invalid player or lives to subtract.");
        }
    }

    // Display the initial lives of the players
    displayLives();

    // Update the lives of the players
    updateLives(1, 2);
    updateLives(2, 1);
    updateLives(3, 3);

    // Display the updated lives of the players
    displayLives();
}
