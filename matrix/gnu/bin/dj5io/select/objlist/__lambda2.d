module objlist.__lambda2;

import std.stdio;
import std.array;
import std.algorithm;

void main() {
    // Test data
    int[] arr = [1, 2, 3, 4, 5, 6];

    // Sort the array in ascending order using std.algorithm.sort
    sort(arr);
    writeln("Sorted array: ", arr);

}