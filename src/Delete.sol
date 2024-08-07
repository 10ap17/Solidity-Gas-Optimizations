pragma solidity ^ 0.8.25;

contract DeleteNotOptimized{
    uint256 a = 1017; 

    function compare()external{
       a = 0;
    }
}

contract DeleteOptimized{
    uint256 a = 1017;

    function compare()external{
       delete a;
    }

}