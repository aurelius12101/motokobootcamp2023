actor {
//Q1
    var total : Nat = 0;
    public func multiply(n : Nat, m : Nat) : async Nat {
        total := n*m;
        return total;
    };
//Q2
    var vol : Nat = 0;
    public func volume(n : Nat) : async Nat {
        vol := n**3;
        return vol;
    };
//Q3
    var min : Nat = 0;
    public func hours_to_minutes(n : Nat) : async Nat {
        min := n*60;
        return min;
    };
//Q4
    var counter : Nat = 0;
    public func set_counter(n : Nat) : async () {
        counter := n;
    };
    public query func get_counter() : async Nat {
        return counter;
    };
//Q5
    var rem : Nat = 1;
    public func test_divide(n : Nat, m : Nat) : async Bool {
        rem := n%m;
        if (rem == 0) return(true) 
        else return(false);
    };
//Q6
    public func is_even(n : Nat) : async Bool {
        rem := n%2;
        if (rem == 0) return(true) 
        else return(false);
    };
};