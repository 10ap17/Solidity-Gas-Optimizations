pragma solidity ^ 0.8.25;

contract ArrayNotOptimized{
    uint256[] array;
    function compare(uint256 _num)external {
        for(uint256 i; i< _num; ++i){
            array.push(i) ;
        }
    }
}

contract ArraytOptimized{
     uint256[2000] array;
    function compare(uint256 _num)external {
        for(uint256 i; i< _num; ++i){
            array[i]= i;
        }
    }
}