pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract EtherTokens is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function EtherTokens(address _owner)  UpgradeableToken(_owner) {
    name = "EtherTokens";
    symbol = "ETT";
    totalSupply = 100000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}