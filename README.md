# Solidity Gas Optimizations
```text
                                ____     ___    ___ __         _____          
                               / __/__  / (_)__/ (_) /___ __  / ___/__ ____   
                              _\ \/ _ \/ / / _  / / __/ // / / (_ / _ `(_-<   
                             /___/\___/_/_/\_,_/_/\__/\_, /  \___/\_,_/___/   
                          ____       __  _       _   /___/  __  _             
                         / __ \___  / /_(_)_ _  (_)__ ___ _/ /_(_)__  ___  ___
                        / /_/ / _ \/ __/ /  ' \/ /_ // _ `/ __/ / _ \/ _ \(_-<
                        \____/ .__/\__/_/_/_/_/_//__/\_,_/\__/_/\___/_//_/___/
                            /_/                                               
```

## Table of Contents
~ [Requirements](#requirements)

~ [Optimizations](#optimizations)


## <a name="requirements"></a>Requirements
To work with this repository, you need to fulfill the following requirements:

Install Foundry:
```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```
Clone the Solidity-Gas-Optimizations repository to your local machine using Git:
```bash
git clone https://github.com/10ap17/Solidity-Gas-Optimizations.git
cd Solidity-Gas-Optimizations
```
Ensure that you have all the required dependencies installed to run the tests. You can install dependencies by running:
```bash
forge install
```
To test, you can use the following command:
```bash
forge test --gas-report
```
Ensure that you meet these requirements before proceeding with any operations within the Solidity-Gas-Optimizations project.

## <a name="optimizations"></a>Optimizations
```bash

.------------------------------------------------------------------.
|                                                                  |
|Today, on the 5th of August, I've started working for Nethermind:)|
|                                                                  |
'------------------------------------------------------------------'
```
```bash
| src/Array.sol:ArrayNotOptimized contract |                 |          |          |          |         |
|------------------------------------------|-----------------|----------|----------|----------|---------|
| Deployment Cost                          | Deployment Size |          |          |          |         |
| 98761                                    | 239             |          |          |          |         |
| Function Name                            | min             | avg      | median   | max      | # calls |
| compare                                  | 22785943        | 22785943 | 22785943 | 22785943 | 1       |


| src/Array.sol:ArraytOptimized contract |                 |          |          |          |         |
|----------------------------------------|-----------------|----------|----------|----------|---------|
| Deployment Cost                        | Deployment Size |          |          |          |         |
| 97225                                  | 232             |          |          |          |         |
| Function Name                          | min             | avg      | median   | max      | # calls |
| compare                                | 22556575        | 22556575 | 22556575 | 22556575 | 1       |


| src/Calldata.sol:CalldataNotOptimized contract |                 |       |        |       |         |
|------------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                                | Deployment Size |       |        |       |         |
| 197613                                         | 700             |       |        |       |         |
| Function Name                                  | min             | avg   | median | max   | # calls |
| compare                                        | 44562           | 44562 | 44562  | 44562 | 1       |


| src/Calldata.sol:CalldataOptimized contract |                 |       |        |       |         |
|---------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                             | Deployment Size |       |        |       |         |
| 184437                                      | 639             |       |        |       |         |
| Function Name                               | min             | avg   | median | max   | # calls |
| compare                                     | 44407           | 44407 | 44407  | 44407 | 1       |


| src/Constant.sol:ConstantNotOptimized contract  |                 |     |        |     |         |
|-------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                 | Deployment Size |     |        |     |         |
| 106287                                          | 177             |     |        |     |         |
| Function Name                                   | min             | avg | median | max | # calls |
| compare                                         | 280             | 280 | 280    | 280 | 1       |


| src/Constant.sol:ConstantOptimized contract     |                 |     |        |     |         |
|-------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                 | Deployment Size |     |        |     |         |
| 84109                                           | 171             |     |        |     |         |
| Function Name                                   | min             | avg | median | max | # calls |
| compare                                         | 180             | 180 | 180    | 180 | 1       |


| src/Delete.sol:DeleteNotOptimized contract |                 |       |        |       |         |
|--------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                            | Deployment Size |       |        |       |         |
| 99153                                      | 144             |       |        |       |         |
| Function Name                              | min             | avg   | median | max   | # calls |
| compare                                    | 21380           | 21380 | 21380  | 21380 | 1       |


| src/Delete.sol:DeleteOptimized contract |                 |       |        |       |         |
|-----------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                         | Deployment Size |       |        |       |         |
| 99141                                   | 144             |       |        |       |         |
| Function Name                           | min             | avg   | median | max   | # calls |
| compare                                 | 21380           | 21380 | 21380  | 21380 | 1       |


| src/Event.sol:EventNotOptimized contract        |                 |       |        |       |         |
|-------------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                                 | Deployment Size |       |        |       |         |
| 83857                                           | 170             |       |        |       |         |
| Function Name                                   | min             | avg   | median | max   | # calls |
| compare                                         | 43506           | 43506 | 43506  | 43506 | 1       |


| src/Event.sol:EventOptimized contract           |                 |       |        |       |         |
|-------------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                                 | Deployment Size |       |        |       |         |
| 95329                                           | 223             |       |        |       |         |
| Function Name                                   | min             | avg   | median | max   | # calls |
| compare                                         | 22474           | 22474 | 22474  | 22474 | 1       |


| src/FunctionName.sol:FunctionNameNotOptimized contract |                 |     |        |     |         |
|--------------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                        | Deployment Size |     |        |     |         |
| 79363                                                  | 149             |     |        |     |         |
| Function Name                                          | min             | avg | median | max | # calls |
| compare                                                | 146             | 146 | 146    | 146 | 1       |


| src/FunctionName.sol:FunctionNameOptimized contract |                 |     |        |     |         |
|-----------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                     | Deployment Size |     |        |     |         |
| 78931                                               | 147             |     |        |     |         |
| Function Name                                       | min             | avg | median | max | # calls |
| compare_aam                                         | 146             | 146 | 146    | 146 | 1       |


| src/Increment.sol:IncrementNotOptimized contract|                 |     |        |     |         |
|-------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                 | Deployment Size |     |        |     |         |
| 91639                                           | 206             |     |        |     |         |
| Function Name                                   | min             | avg | median | max | # calls |
| compare                                         | 247             | 247 | 247    | 247 | 1       |


| src/Increment.sol:IncrementOptimized contract   |                 |     |        |     |         |
|-------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                 | Deployment Size |     |        |     |         |
| 91207                                           | 204             |     |        |     |         |
| Function Name                                   | min             | avg | median | max | # calls |
| compare                                         | 242             | 242 | 242    | 242 | 1       |


|src/Initialize.sol:InitializeNotOptimizedcontract|                 |       |        |       |         |
|-------------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                                 | Deployment Size |       |        |       |         |
| 79783                                           | 151             |       |        |       |         |
| Function Name                                   | min             | avg   | median | max   | # calls |
| compare                                         | 23416           | 23416 | 23416  | 23416 | 1       |


| src/Initialize.sol:InitializeOptimized contract |                 |       |        |       |         |
|-------------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                                 | Deployment Size |       |        |       |         |
| 79351                                           | 149             |       |        |       |         |
| Function Name                                   | min             | avg   | median | max   | # calls |
| compare                                         | 23310           | 23310 | 23310  | 23310 | 1       |


| src/LessThan.sol:LessThanNotOptimized contract  |                 |     |        |     |         |
|-------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                 | Deployment Size |     |        |     |         |
| 88423                                           | 191             |     |        |     |         |
| Function Name                                   | min             | avg | median | max | # calls |
| compare                                         | 250             | 250 | 250    | 250 | 1       |


| src/LessThan.sol:LessThanOptimized contract     |                 |     |        |     |         |
|-------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                 | Deployment Size |     |        |     |         |
| 88207                                           | 190             |     |        |     |         |
| Function Name                                   | min             | avg | median | max | # calls |
| compare                                         | 247             | 247 | 247    | 247 | 1       |


| src/LocalData.sol:LocalDataNotOptimized contract|                 |        |        |        |         |
|-------------------------------------------------|-----------------|--------|--------|--------|---------|
| Deployment Cost                                 | Deployment Size |        |        |        |         |
| 94219                                           | 218             |        |        |        |         |
| Function Name                                   | min             | avg    | median | max    | # calls |
| compare                                         | 391949          | 391949 | 391949 | 391949 | 1       |


| src/LocalData.sol:LocalDataOptimized contract   |                 |        |        |        |         |
|-------------------------------------------------|-----------------|--------|--------|--------|---------|
| Deployment Cost                                 | Deployment Size |        |        |        |         |
| 92923                                           | 212             |        |        |        |         |
| Function Name                                   | min             | avg    | median | max    | # calls |
| compare                                         | 168415          | 168415 | 168415 | 168415 | 1       |


| src/Packing.sol:PackingNotOptimized contract    |                 |       |        |       |         |
|-------------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                                 | Deployment Size |       |        |       |         |
| 152220                                          | 206             |       |        |       |         |
| Function Name                                   | min             | avg   | median | max   | # calls |
| compare                                         | 48334           | 48334 | 48334  | 48334 | 1       |


| src/Packing.sol:PackingOptimized contract       |                 |       |        |       |         |
|-------------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                                 | Deployment Size |       |        |       |         |
| 147504                                          | 187             |       |        |       |         |
| Function Name                                   | min             | avg   | median | max   | # calls |
| compare                                         | 26210           | 26210 | 26210  | 26210 | 1       |


| src/Require.sol:RequireNotOptimized contract    |                 |     |        |     |         |
|-------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                 | Deployment Size |     |        |     |         |
| 100897                                          | 249             |     |        |     |         |
| Function Name                                   | min             | avg | median | max | # calls |
| compare                                         | 343             | 343 | 343    | 343 | 1       |


| src/Require.sol:RequireOptimized contract       |                 |     |        |     |         |
|-------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                 | Deployment Size |     |        |     |         |
| 101305                                          | 251             |     |        |     |         |
| Function Name                                   | min             | avg | median | max | # calls |
| compare                                         | 327             | 327 | 327    | 327 | 1       |


| src/RequireLength.sol:RequireLengthNotOptimized contract |                 |     |        |     |         |
|----------------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                          | Deployment Size |     |        |     |         |
| 155105                                                   | 405             |     |        |     |         |
| Function Name                                            | min             | avg | median | max | # calls |
| compare                                                  | 436             | 436 | 436    | 436 | 1       |


| src/RequireLength.sol:RequireLengthOptimized contract |                 |     |        |     |         |
|-------------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                       | Deployment Size |     |        |     |         |
| 113637                                                | 211             |     |        |     |         |
| Function Name                                         | min             | avg | median | max | # calls |
| compare                                               | 346             | 346 | 346    | 346 | 1       |


| src/ShortCircuit.sol:ShortCircuitNotOptimized contract |                 |       |        |       |         |
|--------------------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                                        | Deployment Size |       |        |       |         |
| 97693                                                  | 234             |       |        |       |         |
| Function Name                                          | min             | avg   | median | max   | # calls |
| compare                                                | 21751           | 21751 | 21751  | 21751 | 1       |


| src/ShortCircuit.sol:ShortCircuitOptimized contract |                 |       |        |       |         |
|-----------------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                                     | Deployment Size |       |        |       |         |
| 97693                                               | 234             |       |        |       |         |
| Function Name                                       | min             | avg   | median | max   | # calls |
| compare                                             | 21741           | 21741 | 21741  | 21741 | 1       |


| src/Unchecked.sol:UncheckeOptimized contract    |                 |       |        |       |         |
|-------------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                                 | Deployment Size |       |        |       |         |
| 94027                                           | 217             |       |        |       |         |
| Function Name                                   | min             | avg   | median | max   | # calls |
| compare                                         | 62324           | 62324 | 62324  | 62324 | 1       | 


| src/Unchecked.sol:UncheckedNotOptimized contract|                 |        |        |        |         |
|-------------------------------------------------|-----------------|--------|--------|--------|---------|
| Deployment Cost                                 | Deployment Size |        |        |        |         |
| 103091                                          | 260             |        |        |        |         |
| Function Name                                   | min             | avg    | median | max    | # calls |
| compare                                         | 125378          | 125378 | 125378 | 125378 | 1       |
```