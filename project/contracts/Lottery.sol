pragma solidity ^0.4.24;

 // To test the app in truffle console: Lottery.deployed().then(function(instance) {app = instance})

contract Lottery{

    //components of a player
    struct Player{
        uint id;
        string name;
        uint amount;
    }

    //store player's id with corresponding name and amount
    mapping(uint => Player) public players;

    //player count
    uint public count;

    function Lottery() public{
      //Constructor  
    }

    function addPlayer(string _name) private{
        count++;
        players[count] = Player(count, _name, 0);
    }
}


