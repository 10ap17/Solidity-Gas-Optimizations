pragma solidity ^ 0.8.25;

contract IncrementNotOptimized{
    function compare(uint256 loop)external pure returns(uint256 result){

        for(uint256 i; i< loop; i++){
            result += 1017;
        }
    }
}

contract IncrementOptimized{
    
    function compare(uint256 loop)external pure returns(uint256 result){

        for(uint256 i; i< loop;++i){
                result += 1017;
                
        }
    }
}