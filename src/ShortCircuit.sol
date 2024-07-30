pragma solidity ^ 0.8.25;

contract ShortCircuitNotOptimized{
    function compare(bool _true, bool _false)external{
        _false || _true;

        _true && _false;
    }
}

contract ShortCircuitOptimized{
    
    function compare(bool _true, bool _false)external{
        _true || _false;

        _false && _true;
    }
}