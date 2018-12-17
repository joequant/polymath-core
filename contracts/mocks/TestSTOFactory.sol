pragma solidity ^0.5.0;

import "../modules/STO/DummySTOFactory.sol";

contract TestSTOFactory is DummySTOFactory {
    /**
     * @notice Constructor
     * @param _setupCost Setup cost of the module
     * @param _usageCost Usage cost of the module
     * @param _subscriptionCost Subscription cost of the module
     */
    constructor(
        uint256 _setupCost,
        uint256 _usageCost,
        uint256 _subscriptionCost
    ) public DummySTOFactory(_setupCost, _usageCost, _subscriptionCost) {
        version = "1.0.0";
        name = "TestSTO";
        title = "Test STO";
        description = "Test STO";
        compatibleSTVersionRange["lowerBound"] = VersionUtils.pack(uint8(0), uint8(0), uint8(0));
        compatibleSTVersionRange["upperBound"] = VersionUtils.pack(uint8(0), uint8(0), uint8(0));
    }

    /**
     * @notice Returns the instructions associated with the module
     */
    function getInstructions() external view returns(string memory) {
        return "Test STO - you can mint tokens at will";
    }

    /**
     * @notice Gets the tags related to the module factory
     */
    function getTags() external view returns(bytes32[] memory) {
        bytes32[] memory availableTags = new bytes32[](4);
        availableTags[0] = "Test";
        availableTags[1] = "Non-refundable";
        availableTags[2] = "ETH";
        return availableTags;
    }

}
