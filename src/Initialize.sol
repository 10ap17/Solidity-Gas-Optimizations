pragma solidity ^ 0.8.25;

contract InitializeNotOptimized{
    uint256 a;

    function compare()external returns(uint256){
        a = 0;
        return a ;
    }
}

contract InitializeOptimized{
    uint256 a; 

    function compare()external returns(uint256){
        return a; 
    }
}