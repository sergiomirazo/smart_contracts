pragma solidity ^0.6.0;

contract PayProject {
    address owner;
    string productLink;
    uint paymentAmount;

    constructor() public {
        owner = msg.sender;
        productLink = "";
        paymentAmount = 0;
    }

    function setProductLink(string memory link) public {
        require(msg.sender == owner);
        productLink = link;
    }

    function setPaymentAmount(uint amount) public {
        require(msg.sender == owner);
        paymentAmount = amount;
    }

    function pay() public payable {
        require(msg.value == paymentAmount);
        msg.sender.transfer(paymentAmount);
    }

    function getProductLink() public view returns (string memory) {
        return productLink;
    }

}
