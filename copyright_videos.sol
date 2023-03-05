pragma solidity ^0.5.0; 

contract VideoClass {
  // This variable stores the name of the class in video
  string public className;
  // This variable stores the name of the creator of the class
  string public creatorName;
  // This variable stores the sale price of the class
  uint public price;
  // This variable stores the state of the class (available/sold)
  string public status;
  // This variable stores the hash of the class
  string public hash;
  // This variable stores the "parent" contract
  address public parentContract;

  // This function is executed when a new video lesson contract is created.
  constructor(string memory _className, string memory _creatorName, uint _price, string memory _hash, address _parentContract) public {
    className = _className;
    creatorName = _creatorName;
    price = _price;
    status = "Available";
    hash = _hash;
    parentContract = _parentContract;
  }

  // This function is executed when a video lesson is sold
  function buy() public {
    status = "Sold";
  }

}
