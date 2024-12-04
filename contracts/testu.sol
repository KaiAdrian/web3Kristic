
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract krstiicFunding {

    string public  name;
    string public  namen;
    uint256 public  goal;
    uint256 public rokTrajanja;
    address public vlastnik;

    constructor(
       string memory _name,
       string memory _namen,
       uint256  _goal,
       uint256 _durationInDays   ///rokTrajanja
    ) {
        name =_name;
        namen =_namen;
        goal =_goal;
        rokTrajanja=block.timestamp +(_durationInDays*1 days);
        vlastnik=msg.sender;
    }
function fund() public payable  {

}
function widraw()public  {

}
function getBalance()public view returns (uint256) {

}
}