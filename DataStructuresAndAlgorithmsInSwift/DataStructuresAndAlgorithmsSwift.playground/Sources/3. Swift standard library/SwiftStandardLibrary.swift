import Foundation

public enum SwiftStandardLibrary {

    /*

     Array
     ---
     Elements in array are ordered
     Most efficient is to append to array as last element (constant time)
     inserting at some location takes n time as elements need to be shifted
     Under the hood, swift arrays are allocated with a predetermined amount of space for its elements. If you try to
     add new elements to an array that is already at maximum capacity, the array must resturcture itself to make
     more room for elements.

     Dictionary
     ---
     Holds key-value pairs
     Dictionaries don't have any guarantees of order, nor can you insert at a specific index. Key type has to be hashable.
     Insertint takes constant times
     Lookup takes constant time

     Set
     ---
     Is a container that holds unique values (easy to find duplicates)
    */
}
