pragma solidity >=0.4.22 <0.6.0;

contract Inbox {
    
    string public message;
    
    Inbox(string initialMessage) public {
        message = initialMessage;
    }
    
    function setMessage(string  memory newMessage) public {
        message = newMessage;
    }
    
    function getMessage() public view returns (string memory) {
        return message;
    }
    
}
