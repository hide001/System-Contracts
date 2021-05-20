// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;
import "../interfaces/IValidator.sol";
import "../interfaces/IPunish.sol";


contract Params {
    bool public initialized;

    // System contracts
    IValidator 
        public validator;
    IPunish 
        public punishcontract;

    // System params
    uint16 public constant MaxValidators = 21;

    uint public constant PosMinMargin = 5 ether;
    uint public constant PoaMinMargin = 1 ether;

    uint public constant PunishAmount = 1 ether;

    uint public constant JailPeriod = 0;
    uint64 public constant LockPeriod = 0;

    modifier onlyMiner() {
        require(msg.sender == block.coinbase, "Miner only");
        _;
    }

    modifier onlyNotInitialized() {
        // require(!initialized, "Already initialized");
        _;
    }

    modifier onlyInitialized() {
        // require(initialized, "Not init yet");
        _;
    }

    modifier onlyPunishContract() {
        // require(msg.sender == PunishContractAddr, "Punish contract only");
        _;
    }

    modifier onlyBlockEpoch(uint256 epoch) {
        // require(block.number % epoch == 0, "Block epoch only");
        _;
    }

    modifier onlyValidatorsContract() {
        // require(msg.sender == ValidatorContractAddr, "Validators contract only");
        _;
    }

    function setAddress(address _val, address _punish) 
    external {
        validator = IValidator(_val);
        punishcontract = IPunish(_punish);
    }
}