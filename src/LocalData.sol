pragma solidity ^ 0.8.25;

contract LocalDataNotOptimized{

    uint256 num; 

    function compare()external{

        for(uint256 i; i< 1017; i++){
            num += 1017;
        }
    }
}

contract LocalDataOptimized{
    
    uint256 num;

    function compare()external{

        uint256 _num;

        for(uint256 i; i< 1017;i++){
           _num +=1017; 
        }

        num = _num;
    }
}