pragma solidity ^0.8.0;

contract attend {
    
    string[] name;
    
    function Attend(string memory _name) public {
        name.push(_name);
    }
        
    function Audience() external view returns (string[] memory) {
        return name;
    }
}