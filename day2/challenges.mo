import Array "mo:base/Array";
//Day 2
//Q1 Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
actor {
    public query func average_array(array: [Int]) : async Int {
        var size : Int = array.size();
        var a : Int = 0;
        var id : Nat = 0;
        while (id < size) {
          a += array.get(id);
          id += 1;
        };
        return a/size;
    };
};

//Q2 Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.