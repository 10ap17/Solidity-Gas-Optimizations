pragma solidity ^0.8.25;

contract CalldataNotOptimized{
    string ap;
    function compare(string memory _10ap17)external{

        ap = _10ap17;

    }
}

contract CalldataOptimized{
    string ap;
    function compare(string calldata _10ap17)external{

        ap = _10ap17;

    }
}