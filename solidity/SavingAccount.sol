pragma solidity ^0.5.1;

contract Timelock {
    
    address payable beneficiary;
    uint256 releaseTime;
    
    constructor (address payable _beneficiary, uint256 _releaseTime) public {
        require(_releaseTime > block.timestamp);
        beneficiary = _beneficiary;
        releaseTime = _releaseTime;
    }
    
    function release() public {
        require(block.timestamp >= releaseTime);
        address(beneficiary).transfer(address(this).balance);
    }
}