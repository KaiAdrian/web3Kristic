
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
    require(msg.value > 0, unicode"Vrednost mora biti večja od 0.");
    require(block.timestamp<rokTrajanja, unicode"Rok je potekel.");
}

function widraw()public  {
    require(msg.sender== vlastnik, unicode"Nimate dostopa");
    require(address(this).balance >=goal, unicode"Cilj ni dosežen");

    uint256 balance =address(this).balance;
    require(balance>0, unicode"dvig mora biti večji od 0");

    payable(vlastnik).transfer(balance);
}

function getBalance()public view returns (uint256) {
    return address(this).balance;
} 

}