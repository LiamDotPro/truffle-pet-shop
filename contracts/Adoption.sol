pragma solidity ^0.4.0;

// mnemonic fox brass salad already lecture awkward two unique maple quote there owner
contract Adoption {


    address[16] public adopters;

    /*
    The general rule of thumb for require and assert functions is as follows,
    When your asserting about something internal then you will want to use the,
    assert() method, which I will presume is based off using mocha framework.

    The require() statement is meant for validating return values which are to be
    relayed out from the contract? meeting conditions is the basic explanation.
    */

    // This feels very much like coding C,
    // When a function is created you must specify the return policy alongside the
    // variables type within the arguments.
    function adopt(uint petId) public returns (uint){
        // what does require do? The Id makes sense though.
        require(petId >= 0 && petId <= 15);

        // msg.sender, I'm going to presume that the msg object is a global object with
        // the sender potion being just a method off which relays information about
        // the person trying to operate the contract
        adopters[petId] = msg.sender;

        return petId;
    }

    // Essentially without omitting the parameter names I don't need to present
    // a require statement.
    /*
    function adopt(uint petId) public returns (uint petId){
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;
    }
    */

    // Essentially a fairly standard get method.
    function getAdopters() public returns (address[16]){
        return adopters;
    }

    // Going to presume that this would also be valid syntax, though highlighting
    // doesn't find the property defined within the contract.
    /*
    function getAdoptersSingle() public returns(address[16] adopters);
    */


}
