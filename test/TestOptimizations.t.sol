pragma solidity ^ 0.8.25;

import "forge-std/Test.sol";
import {PackingNotOptimized, PackingOptimized} from "../src/Packing.sol";
import {ConstantNotOptimized, ConstantOptimized} from "../src/Constant.sol";
import {UncheckedNotOptimized, UncheckeOptimized} from "../src/Unchecked.sol";
import {RequireNotOptimized, RequireOptimized} from "../src/Require.sol";
import {IncrementNotOptimized, IncrementOptimized} from "../src/Increment.sol";
import {EventNotOptimized, EventOptimized} from "../src/Event.sol";
import {LocalDataNotOptimized, LocalDataOptimized} from "../src/LocalData.sol";
import {InitializeNotOptimized, InitializeOptimized} from "../src/Initialize.sol";
import {RequireLengthNotOptimized, RequireLengthOptimized} from "../src/RequireLength.sol";
import {FunctionNameNotOptimized, FunctionNameOptimized} from "../src/FunctionName.sol";
import {ShortCircuitNotOptimized, ShortCircuitOptimized} from "../src/ShortCircuit.sol";
import {CalldataNotOptimized, CalldataOptimized} from "../src/Calldata.sol";
import {LessThanNotOptimized, LessThanOptimized} from "../src/LessThan.sol";
import {DeleteNotOptimized, DeleteOptimized} from "../src/Delete.sol";
import {ArrayNotOptimized, ArraytOptimized} from "../src/Array.sol";
import {StringNotOptimized, StringOptimized} from "../src/String.sol";

contract TestOptimizations is Test{
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

    function test_ReqireLengthOptimization()external{
        RequireLengthNotOptimized notOptimized = new RequireLengthNotOptimized();
        RequireLengthOptimized optimized = new RequireLengthOptimized();

        vm.expectRevert();
        notOptimized.compare();

        vm.expectRevert();
        optimized.compare();
    }

    function test_FunctionNameOptimization()external{
        FunctionNameNotOptimized notOptimized = new FunctionNameNotOptimized();
        FunctionNameOptimized optimized = new FunctionNameOptimized();

        notOptimized.compare();
        optimized.compare_aam();
    }

    function test_ShortCircuitOptimization()external{
        ShortCircuitNotOptimized notOptimized = new ShortCircuitNotOptimized();
        ShortCircuitOptimized optimized = new ShortCircuitOptimized();
        
        notOptimized.compare(true, false);
        optimized.compare(true, false);
    }

    function test_CalldataOptimization()external{
        CalldataNotOptimized notOptimized = new CalldataNotOptimized();
        CalldataOptimized optimized = new CalldataOptimized();

        notOptimized.compare("10ap17");
        optimized.compare("10ap17");
    }

    function test_LessThanOptimization()external{
        LessThanNotOptimized notOptimized = new LessThanNotOptimized();
        LessThanOptimized optimized = new LessThanOptimized();

        notOptimized.compare(1017);
        optimized.compare(1017);
    }

    function test_DeleteOptimization()external{
        DeleteNotOptimized notOptimized = new DeleteNotOptimized();
        DeleteOptimized optimized = new DeleteOptimized();

        notOptimized.compare();
        optimized.compare();
    }

    function test_ArrayOptimization()external{
        ArrayNotOptimized notOptimized = new ArrayNotOptimized();
        ArraytOptimized optimized = new ArraytOptimized();

        notOptimized.compare(1017);
        optimized.compare(1017);
    }

    function test_StringOptimization()external{
        StringNotOptimized notOptimized = new StringNotOptimized();
        StringOptimized optimized = new StringOptimized();

        notOptimized.compare();
        optimized.compare();
    }
}