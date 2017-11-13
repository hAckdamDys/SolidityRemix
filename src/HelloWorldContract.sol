pragma solidity ^0.4.0;


contract HelloWorldContract {
    string private word;
    function HelloWorldContract(){
        word = "Hello World!";
    }

    function getWord1() public returns(string){//eats ether
        return word;
    }

    function getWord2() public constant returns(string){//doesnt eat ether
        return word;
    }

}
