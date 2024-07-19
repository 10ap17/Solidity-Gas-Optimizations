pragma solidity ^ 0.8.25;

contract PackingNotOptimized{
    uint8 a = 10;
    uint256 b = 10;
    address c = address(0);
    uint256 d = 10;
}

contract PackingOptimized{
    uint256 b = 10;
    uint256 d = 10;
    address c = address(0);
    uint8 a = 10;
}