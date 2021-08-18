// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract firstSmartContract {
    string helloWorld = "hello world";

    function getHelloWorld() public view returns (string memory){
         return helloWorld;       
    }

    function setHelloWorld(string memory newHelloWorld) public{
        helloWorld = newHelloWorld;
    }


    function sendMoney(address payable afortunado) payable public{
        require(msg.value <= address(this).balance);
        afortunado.transfer(msg.value);
    }
}
