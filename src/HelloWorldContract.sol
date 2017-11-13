pragma solidity ^0.4.0;


contract HelloWorldContract {
    string private word;
    address private creator;

    function HelloWorldContract() public{
        word = "Hello World!";
        creator=msg.sender;
    }

    function getWord1() public returns(string){//eats ether
        if(msg.sender!=creator){
            return "not creator!";
        }
        return word;
    }

    function getWord2() public constant returns(string){//doesnt eat ether
        if(msg.sender!=creator){
            return "not creator!";
        }
        return word;
    }

}
