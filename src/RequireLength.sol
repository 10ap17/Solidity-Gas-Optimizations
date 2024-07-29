pragma solidity ^ 0.8.25;

contract RequireLengthNotOptimized{
    uint256 a = 1017;

    function compare()external view{
        require(a > 1017, "Not bigger Not bigger Not bigger Not bigger Not bigger Not bigger Not bigger Not bigger Not bigger Not bigger Not bigger Not bigger Not bigger Not bigger Not bigger ");
    }
}

contract RequireLengthOptimized{
    uint256 a = 1017;

    function compare()external view{
        require(a > 1017, "Not bigger");  
    }

}