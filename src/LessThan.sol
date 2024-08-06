pragma solidity ^ 0.8.25;

contract LessThanNotOptimized{
    function compare(uint256 _num)external pure returns(bool){
       return _num <= 1017;
    }
}

contract LessThanOptimized{
    
    function compare(uint256 _num)external pure returns(bool){
       return _num < 1018;
    }
}