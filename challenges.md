# Coding challenges
1. Write a function **multiply** that takes two natural numbers and returns the product. 
```
multiply(n : Nat, m : Nat) -> async Nat
```

```
actor {
  var total : Nat = 0;

  public func multiply(n : Nat, m : Nat) : async Nat {
    total := n*m;
    return total;
  };
}
```
2. Write a function **volume** that takes a natural number n and returns the volume of a cube with side length n.
```
volume(n : Nat) -> async Nat
```
```
actor {
  var vol : Nat = 0;

  public func cube(n : Nat) : async Nat {
    vol := n**3;
    return vol;
  };
}
```

3. Write a function **hours_to_minutes** that takes a number of hours n and returns the number of minutes.
```
hours_to_minutes(n : Nat) -> async Nat
```
```
actor {
  var min : Nat = 0;

  public func mins(n : Nat) : async Nat {
    min := n*60;
    return min;
  };
}
```
4. Write two functions **set_counter** & **get_counter** .

- set_counter sets the value of counter to n.
- get_counter returns the current value of counter.
```
set_counter(n : Nat) -> async ()
get_counter() -> async Nat
```
```
actor {
  var counter : Nat = 0;

  public func set_counter(n : Nat) : async () {
    counter := n;
  };

  public query func get_counter() : async Nat {
    return counter;
  };
};
```
5. Write a function **test_divide** that takes two natural numbers n and m and returns a boolean indicating if n divides m.
```
test_divide(n: Nat, m : Nat) -> async Bool
```
```
actor {
    var rem : Nat = 1;
    public func test_divide(n : Nat, m : Nat) : async Bool {
        rem := n%m;
        if (rem == 0) return(true) 
        else return(false);
    };
};
```
6. Write a function **is_even** that takes a natural number n and returns a boolean indicating if n is even.
```
is_even(n : Nat) -> async Bool 
```
```
actor {
    var rem : Nat = 1;
    public func is_even(n : Nat) : async Bool {
        rem := n%2;
        if (rem == 0) return(true) 
        else return(false);
    };
};
```
