pragma solidity ^ 0.8.25;

contract FunctionNameNotOptimized{
    function compare()external pure returns(uint256){
        return 1017;
    }
}

contract FunctionNameOptimized{
    
    function compare_aam()external pure returns(uint256){
        return 1017;
    }
}