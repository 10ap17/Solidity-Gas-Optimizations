pragma solidity ^ 0.8.25;

contract IncrementNotOptimized{
    function compare()external pure returns(uint256 result){
        result++;
    }
}

contract IncrementOptimized{
    
    function compare()external pure returns(uint256 result){
        ++result;
    }
}