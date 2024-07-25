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
forge test
```
Ensure that you meet these requirements before proceeding with any operations or testing within the Solidity-Gas-Optimizations project.

## <a name="optimizations"></a>Optimizations
```bash
| src/Constant.sol:ConstantNotOptimized contract |                 |     |        |     |         |
|------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                | Deployment Size |     |        |     |         |
| 106287                                         | 177             |     |        |     |         |
| Function Name                                  | min             | avg | median | max | # calls |
| compare                                        | 280             | 280 | 280    | 280 | 1       |


| src/Constant.sol:ConstantOptimized contract |                 |     |        |     |         |
|---------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                             | Deployment Size |     |        |     |         |
| 84109                                       | 171             |     |        |     |         |
| Function Name                               | min             | avg | median | max | # calls |
| compare                                     | 180             | 180 | 180    | 180 | 1       |


| src/Event.sol:EventNotOptimized contract |                 |       |        |       |         |
|------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                          | Deployment Size |       |        |       |         |
| 83857                                    | 170             |       |        |       |         |
| Function Name                            | min             | avg   | median | max   | # calls |
| compare                                  | 43506           | 43506 | 43506  | 43506 | 1       |


| src/Event.sol:EventOptimized contract |                 |       |        |       |         |
|---------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                       | Deployment Size |       |        |       |         |
| 95329                                 | 223             |       |        |       |         |
| Function Name                         | min             | avg   | median | max   | # calls |
| compare                               | 22474           | 22474 | 22474  | 22474 | 1       |


| src/Increment.sol:IncrementNotOptimized contract |                 |     |        |     |         |
|--------------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                                  | Deployment Size |     |        |     |         |
| 91639                                            | 206             |     |        |     |         |
| Function Name                                    | min             | avg | median | max | # calls |
| compare                                          | 247             | 247 | 247    | 247 | 1       |


| src/Increment.sol:IncrementOptimized contract |                 |     |        |     |         |
|-----------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                               | Deployment Size |     |        |     |         |
| 91207                                         | 204             |     |        |     |         |
| Function Name                                 | min             | avg | median | max | # calls |
| compare                                       | 242             | 242 | 242    | 242 | 1       |


| src/Packing.sol:PackingNotOptimized contract |                 |       |        |       |         |
|----------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                              | Deployment Size |       |        |       |         |
| 152220                                       | 206             |       |        |       |         |
| Function Name                                | min             | avg   | median | max   | # calls |
| compare                                      | 48334           | 48334 | 48334  | 48334 | 1       |


| src/Packing.sol:PackingOptimized contract |                 |       |        |       |         |
|-------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                           | Deployment Size |       |        |       |         |
| 147504                                    | 187             |       |        |       |         |
| Function Name                             | min             | avg   | median | max   | # calls |
| compare                                   | 26210           | 26210 | 26210  | 26210 | 1       |


| src/Require.sol:RequireNotOptimized contract |                 |     |        |     |         |
|----------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                              | Deployment Size |     |        |     |         |
| 100897                                       | 249             |     |        |     |         |
| Function Name                                | min             | avg | median | max | # calls |
| compare                                      | 343             | 343 | 343    | 343 | 1       |


| src/Require.sol:RequireOptimized contract |                 |     |        |     |         |
|-------------------------------------------|-----------------|-----|--------|-----|---------|
| Deployment Cost                           | Deployment Size |     |        |     |         |
| 101305                                    | 251             |     |        |     |         |
| Function Name                             | min             | avg | median | max | # calls |
| compare                                   | 327             | 327 | 327    | 327 | 1       |


| src/Unchecked.sol:UncheckeOptimized contract |                 |       |        |       |         |
|----------------------------------------------|-----------------|-------|--------|-------|---------|
| Deployment Cost                              | Deployment Size |       |        |       |         |
| 94027                                        | 217             |       |        |       |         |
| Function Name                                | min             | avg   | median | max   | # calls |
| compare                                      | 62324           | 62324 | 62324  | 62324 | 1       |


| src/Unchecked.sol:UncheckedNotOptimized contract |                 |        |        |        |         |
|--------------------------------------------------|-----------------|--------|--------|--------|---------|
| Deployment Cost                                  | Deployment Size |        |        |        |         |
| 103091                                           | 260             |        |        |        |         |
| Function Name                                    | min             | avg    | median | max    | # calls |
| compare                                          | 125378          | 125378 | 125378 | 125378 | 1       |
```