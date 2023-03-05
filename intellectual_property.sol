pragma solidity ^0.4.24;

contract Libro {

string public name;
string public author;
string public editorial;
string public publicationDate;

//Book properties
mapping (address => bool) public owners;

//Constructor to initialize values
constructor(string _name, string _author, string _editorial, string _publicationDate) public {
    nombre = _name;
    autor = _author;
    editorial = _editorial;
    publicationDate = _publicationDate;
}

//Function to buy the book
function buyBook() public {
    owners[msg.sender] = true;
}

//Function to check who is the owner
function isOwner(address _owner) public view returns(bool) {
    return owners[_owner];
}

}
