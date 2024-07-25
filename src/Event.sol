pragma solidity ^ 0.8.25;

contract EventNotOptimized{
    uint256 num;
    function compare(uint256 _num)external {
        num= _num;
    }
}

contract EventOptimized{
    event NumStored(uint256 num);
    function compare(uint256 _num)external {
        emit NumStored(_num);
    }
}