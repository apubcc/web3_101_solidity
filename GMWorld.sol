// Specifies the Solidity version. This is to ensure that the contract does not get compiled with a newer compiler version that might introduce changes.
pragma solidity ^0.8.0;

// Contract declaration. Think of this like a class in object-oriented programming.
contract GMWorld {

    // State variable to store a number. Stored on the blockchain.
    uint private storedNumber;

    // Event declaration - used for logging activity. Clients can listen for these events.
    event NumberChanged(uint newNumber);

    // Constructor - called when the contract is deployed. Initializes contract state.
    constructor() {
        storedNumber = 5; // Setting an initial value
    }

    // Public function to store a number. The 'public' keyword makes it callable from outside the contract.
    function storeNumber(uint _number) public {
        storedNumber = _number;

        // Emitting an event to log the action.
        emit NumberChanged(_number);
    }

    // Public function to retrieve the stored number. 
    // 'view' means it only reads from the blockchain and does not modify the state.
    // 'returns' specifies the return type.
    function retrieveNumber() public view returns (uint) {
        return storedNumber;
    }
}
