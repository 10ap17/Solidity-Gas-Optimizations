pragma solidity ^ 0.8.25;

contract pragma solidity ^ 0.8.25;

contract ConstantNotOptimized{
    uint256 public a= 1017;

    function compare()external view returns(uint256){
        return a; 
    }
}

contract ConstantOptimized{
    uint256 public constant a = 1017;  

    function compare()external view returns(uint256){
        return a; 
    }
}
