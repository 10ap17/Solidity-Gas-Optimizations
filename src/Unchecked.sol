pragma solidity ^ 0.8.25;

contract UncheckedNotOptimized{
    function compare(uint256 loop)external pure returns(uint256 result){

        for(uint256 i; i< loop; i++){
            result += 1017;
        }
    }
}

contract UncheckeOptimized{
    
    function compare(uint256 loop)external pure returns(uint256 result){

        for(uint256 i; i< loop;){
            
            unchecked{
                result += 1017;
                i++;
            }
        }
    }
}