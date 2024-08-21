pragma solidity ^ 0.8.25;

contract ZeroAddressNotOptimized{
    error ZeroAddressProvided();

    function compare(address addr) public pure {
            if (addr==address(0)) {
                revert ZeroAddressProvided();
            }
        }
}

contract ZeroAddressThanOptimized{
    function compare(address addr)external pure{
       assembly {
            if iszero(addr) {
                revert(0, 0)
            }
        }
    }
}