// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@opengsn/contracts/src/ERC2771Recipient.sol";

contract Migrations {

  constructor(address _trustedForwarder) public {
          trustedForwarder = _trustedForwarder;
      }
  address public owner = _msgSender();
  uint public last_completed_migration;

  modifier restricted() {
    require(
      _msgSender() == owner,
      "This function is restricted to the contract's owner"
    );
    _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
