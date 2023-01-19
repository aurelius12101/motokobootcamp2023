# Questions 🙋

1. Who controls the ledger canister?

    The Network Nervous System DAO.

2. What is the subnet of the canister with the id: **mwrha-maaaa-aaaab-qabqq-cai**? How much nodes are running this subnet?  

    The subnet is pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe

    There are 16 node machines running this subnet. 


3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

    Assuming the information here https://support.dfinity.org/hc/en-us/articles/4404284534420-What-is-voting-power- is accurate:

    Voting Power = Stake * Dissolve Delay Bonus * Age Bonus
    
    Voting Power = 10 * 1.48 * 1.125 = 16.65

4. What is wrong with the following code?

    It should import the base/Nat library.
```
import Nat "mo:base/Nat";
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
}
```
5. What is wrong with the following code?
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```
6. What is wrong with the following code?
    In motoko arrays must have a fixed size. Therefore, Array.append can not work. 

    A buffer should be used instead. 
```
import Buffer "mo:base/Buffer";
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];
  var buf = Buffer.Buffer<Text>(4);
  public func bufferise() : async () {
    for(x in languages.vals()){
    buf.add(x);
    };
  };
  public func add_language(new_language : Text) : async [Text] {
    buf.add(new_language);
    return(buf.toArray())
  };
}
```
