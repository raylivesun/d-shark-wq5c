module items.locallist;

import std.stdio;
import std.array;
import std.string;
import std.algorithm;
import std.math;
/**
 * Saves a local list of items to a text file.
 *
 * @param filename The name of the text file to save the list of items.
 * @param items An array of strings representing the items in the list.
 */
void saveLocalList(string filename, string[] items)
{
    // Convert the array of items to a single string with newlines between each item
    string content = items.join("\n");
}


/**
 * Sorts the items in a local list alphabetically.
 *
 * @param items An array of strings representing the items in the list.
 * @return The sorted array of items.
 */
string[] sortLocalList(string[] items)
{
    // Sort the array of items alphabetically
    items.sort();
    return items;
}

/**
 * Adds a new item to a local list.
 *
 * @param items An array of strings representing the items in the list.
 * @param item The new item to be added.
 * @return The updated array of items.
 */
string[] addItemToLocalList(string[] items, string item)
{
    // Add the new item to the array
    items ~= item;

    // Sort the array of items alphabetically
    items.sort();
    return items;
}

/**
 * Removes an item from a local list.
 *
 * @param items An array of strings representing the items in the list.
 * @param item The item to be removed.
 * @return The updated array of items.
 */
 string[] removeItemFromLocalList(string[] items, string item)
 {
    // Sort the array of items alphabetically
    items.sort();
    return items;
}

/**
 * Updates the quantity of an item in a local list.
 *
 * @param items An array of strings representing the items in the list.
 * @param item The item whose quantity needs to be updated.
 * @param newQuantity The new quantity for the specified item.
 * @return The updated array of items.
 */
 string[] updateItemQuantity(string[] items, string item, int newQuantity)
 {
    // Sort the array of items alphabetically
    items.sort();
    return items;
}

/**
 * Retrieves the quantity of an item from a local list.
 *
 * @param items An array of strings representing the items in the list.
 * @param item The item whose quantity needs to be retrieved.
 * @return The quantity of the specified item, or -1 if the item is not found.
 */
 int getItemQuantity(string[] items, string item)
 {
    return -1;
 }

/**
 * Retrieves the total quantity of all items in a local list.
 *
 * @param items An array of strings representing the items in the list.
 * @return The total quantity of all items.
 */
 int getTotalQuantity(string[] items)
 {
    int totalQuantity = 0;
    return totalQuantity;
}


/**
 * Retrieves the most frequent item in a local list.
 *
 * @param items An array of strings representing the items in the list.
 * @return The most frequent item, or an empty string if there is no frequent item.
 */
 string getMostFrequentItem(string[] items)
 {
    int maxQuantity = 0;
    string mostFrequentItem = "";
    foreach (item; items)
    {
        int quantity = getItemQuantity(items, item);
        if (quantity > maxQuantity)
        {
            maxQuantity = quantity;
            mostFrequentItem = item;
        }
        else if (quantity == maxQuantity && item > mostFrequentItem)
        {
            mostFrequentItem = item;
        }
    }
    return mostFrequentItem;
}
/**
 * Retrieves the least frequent item in a local list.
 *
 * @param items An array of strings representing the items in the list.
 * @return The least frequent item, or an empty string if there is no least frequent item.
 */
 string getLeastFrequentItem(string[] items)
 {
    int minQuantity = int.max;
    string leastFrequentItem = "";
    foreach (item; items)
    {
        int quantity = getItemQuantity(items, item);
        if (quantity < minQuantity)
        {
            minQuantity = quantity;
            leastFrequentItem = item;
        }
        else if (quantity == minQuantity && item < leastFrequentItem)
        {
            leastFrequentItem = item;
        }
    }
    return leastFrequentItem;
}



/**
 * Retrieves the standard deviation of quantities in a local list.
 *
 * @param items An array of strings representing the items in the list.
 * @return The standard deviation of quantities in the list, or -1 if the list is empty.
 */
 float getStandardDeviationQuantity(string[] items)
 {
    int totalQuantity = getTotalQuantity(items);
    if (totalQuantity == 0)
        return -1;

    float sum = 0;
    foreach (item; items)
    {
        int quantity = getItemQuantity(items, item);
    }
    float variance = sum / totalQuantity;
    return sqrt(variance);
}

// Example usage
void main()
{
    string[] items = [
        "apple(10)",
        "banana(5)",
        "cherry(8)",
        "apple(15)",
        "banana(12)",
        "cherry(10)"
    ];

    int quantity = getItemQuantity(items, "apple");
    writeln("Quantity of apple: ", quantity);

    int totalQuantity = getTotalQuantity(items);
    writeln("Total quantity: ", totalQuantity);

    string mostFrequentItem = getMostFrequentItem(items);
    writeln("Most frequent item: ", mostFrequentItem);

    string leastFrequentItem = getLeastFrequentItem(items);
    writeln("Least frequent item: ", leastFrequentItem);

}
    
