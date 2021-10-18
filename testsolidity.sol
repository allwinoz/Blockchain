pragma solidity ^0.8.7;

contract uintExample{
    uint public myUint;
    bool public mybool;
    uint8 public dincrement;
    address public myaddress;
    string public myString;
    
    function setmynumber(uint _myNumber) public{
        myUint = _myNumber;
    }
    function setmybool(bool _mybool) public{
        mybool = _mybool;
    }
    function setincrement() public{
        dincrement++;
    }
    function setdecrement() public{
        dincrement--;
    }
    function setaddress(address _address) public{
        myaddress = _address;
    }
    function getbalanceaddress() public view returns(uint){
        return myaddress.balance;
    }
    function setmystring(string memory _myString)public{
        myString = _myString;
    }
}
