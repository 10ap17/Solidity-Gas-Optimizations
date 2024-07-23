pragma solidity ^ 0.8.25;

contract RequireNotOptimized{
    function compare(uint256 _num)external pure{
        require(_num%2==1 && _num>1000 && _num<2000);
    }
}

contract RequireOptimized{
    function compare(uint256 _num)external pure{
        require(_num%2==1);
        require( _num>1000);
        require(_num<2000);
    }

}