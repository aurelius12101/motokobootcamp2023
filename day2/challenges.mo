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

//Q4 Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
    public query func number_of_words(t : Text) : async Nat {
        var count : Nat = 1;
        for (c in t.chars()) {
            if (Char.isWhitespace(c)) {
                count += 1;
            };
        };
        return count;
    };

//Q5 Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.

};