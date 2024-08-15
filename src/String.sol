pragma solidity ^0.8.25;

contract StringNotOptimized{
    string ap;
    function compare()external{

        ap = "10ap17";

    }
}

contract StringOptimized{
    bytes32 ap;
    function compare()external{

        ap = "10ap17";

    }
}