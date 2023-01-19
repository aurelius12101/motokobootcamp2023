import Array "mo:base/Array";
import Char "mo:base/Char";
//Day 2
//Q1 Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
actor {
    public query func average_array(array: [Int]) : async Int {
        let size : Int = array.size();
        var a : Int = 0;
        var id : Nat = 0;
        while (id < size) {
          a += array.get(id);
          id += 1;
        };
        return a/size;
    };


//Q2 Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
    public query func count_counter(t : Text, c : Char) : async Nat {
        var count : Nat = 0;
        for (x in t.chars()) {
            if (x == c) {
                count += 1;
            };
        };
        return count;
    };

//Q3 Write a function factorial that takes a natural number n and returns the factorial of n.
    public query func factorial(n : Nat) : async Nat {
        var total : Nat = 1;
        var i : Nat = 0;
        while (i < n) {
            total *= n-i;
            i += 1;
        };
        return total;
    };
};