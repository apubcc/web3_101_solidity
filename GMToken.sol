// Specifies the version of Solidity.
pragma solidity ^0.8.0;

// SimpleToken contract that creates a basic ERC-20 token.
contract GMToken {
    string public name = "GMToken";
    string public symbol = "GMT";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    // Records balances of each account.
    mapping(address => uint256) public balanceOf;

    // Event that is emitted when a transfer is made.
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Constructor sets the total supply and assigns it to transaction sender.
    constructor(uint256 _initialSupply) {
        totalSupply = _initialSupply * (10 ** uint256(decimals));
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    // Function to transfer tokens to a given address.
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
}
