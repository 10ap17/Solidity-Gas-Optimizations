pragma solidity ^0.8.25;

contract CalldataNotOptimized{
    string 10ap17;
    function compare(string memory _10ap17)external{

        10ap17 = _10ap17;

    }
}

contract CalldataOptimized{
    
    function compare(string calldata _10ap17)external{

        10ap17 = _10ap17;

    }
}