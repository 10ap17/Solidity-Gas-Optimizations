pragma solidity ^ 0.8.25;

import {PackingNotOptimized, PackingOptimized} from "../src/Packing.sol";
import {ConstantNotOptimized, ConstantOptimized} from "../src/Constant.sol";
import {UncheckedNotOptimized, UncheckeOptimized} from "../src/Unchecked.sol";
import {RequireNotOptimized, RequireOptimized} from "../src/Require.sol";
import {IncrementNotOptimized, IncrementOptimized} from "../src/Increment.sol";
import {EventNotOptimized, EventOptimized} from "../src/Event.sol";
import {LocalDataNotOptimized, LocalDataOptimized} from "../src/LocalData.sol";
import {InitializeNotOptimized, InitializeOptimized} from "../src/Initialize.sol";

contract TestOptimizations{
    function setUp()external{}

    function test_PackingOptimization()external {
        PackingOptimized optimized = new PackingOptimized();
        PackingNotOptimized notOptimized = new PackingNotOptimized();

        optimized.compare();
        notOptimized.compare();
    }
    
    function test_ConstantOptimization()external{
        ConstantNotOptimized notOptimized = new ConstantNotOptimized();
        ConstantOptimized optimized = new ConstantOptimized();

        notOptimized.compare();
        optimized.compare();
    }

    function test_UncheckedOptimization()external{
        UncheckedNotOptimized notOptimized= new UncheckedNotOptimized();
        UncheckeOptimized optimized= new UncheckeOptimized();

        notOptimized.compare(1017);
        optimized.compare(1017);
    }
    
    function test_RequireOptimization()external{
        RequireNotOptimized notOptimized= new RequireNotOptimized();
        RequireOptimized optimized= new RequireOptimized();

        notOptimized.compare(1017);
        optimized.compare(1017);
    }

    function test_IncrementOptimization()external{
       IncrementNotOptimized notOptimized = new IncrementNotOptimized();
       IncrementOptimized optimized = new IncrementOptimized();

       notOptimized.compare();
       optimized.compare();
    }

    function test_EventStoringOptimization()external{
        EventNotOptimized notOptimized = new EventNotOptimized();
        EventOptimized optimized = new EventOptimized();

        notOptimized.compare(1017);
        optimized.compare(1017);
    }

    function test_LocalDataOptimization()external{
        LocalDataNotOptimized notOptimized = new LocalDataNotOptimized();
        LocalDataOptimized optimized = new LocalDataOptimized();

        notOptimized.compare();
        optimized.compare();
    }

    function test_InitializeOptimization()external{
        InitializeNotOptimized notOptimized = new InitializeNotOptimized();
        InitializeOptimized optimized = new InitializeOptimized();

        notOptimized.compare();
        optimized.compare();
    }
}