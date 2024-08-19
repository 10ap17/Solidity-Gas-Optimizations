pragma solidity ^ 0.8.25;

contract AdditonNotOptimized{
   uint256 num=17;
    function compare( uint256 _num)external{
       num += _num;
       }
}

contract AdditiontOptimized{
     uint256 num=17;
    function compare(uint256 _num)external{
        num = num + _num;
    }
}
