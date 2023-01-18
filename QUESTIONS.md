# Questions
**1. How much is the current memory capacity of a canister?**

As of the implementation of NNS proposal 92573, canisters can hold 48GiB of stable memory. However the heap is limited to 4GiB as the current WASM runtime only supports 32-bit native memory.

**2. What is the issue with the following code sample?**
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```
In this code sample counter is erroneously declared as an immutable variable. It should instead be declared as a mutable variable.
```
actor {
  var counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```
**3. What is the issue with the following code sample?**
```
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```
In this code sample the value provided in message's variable declaration is of an incorrect type (Nat rather than Text), and the 'change_message' function is incorrectly defined as a query function.
```
actor {
  var message : Text = "0";

  public func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```

**4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer.**

False, all shared functions require the **async** keyword, query functions included. 
