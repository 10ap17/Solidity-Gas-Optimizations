pragma solidity ^ 0.8.25;

import {PackingNotOptimized, PackingOptimized} from "../src/Packing.sol";

contract TestOptimizations{
    function setUp()external{}

    function test_PackingOptimization()external {
        PackingOptimized optimized = new PackingOptimized();
        PackingNotOptimized notOptimized = new PackingNotOptimized();

        optimized.compare();
        notOptimized.compare();
    }
    
    
}