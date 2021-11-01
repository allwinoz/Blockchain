pragma solidity ^0.8.1;

contract sendmoneyexample {
    
    uint public balanceReceived;
    uint public lockeduntil;
    
    function receiveMoney() public payable {
        balanceReceived += msg.value; //msg untuk ambil data dari pengirim baik nominal/nama
        lockeduntil = block.timestamp + 7 seconds;
    }
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function withdrawMoney() public {
        if (lockeduntil < block.timestamp) {
            address payable to = payable(msg.sender);
            to.transfer(getBalance());
        }    
    }
    
    function SendMoneyTo (address payable tujuan) public {
        if (lockeduntil < block.timestamp) {
            tujuan.transfer(getBalance());
        }
    }
}
testing by rasyid