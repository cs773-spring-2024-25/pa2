# ChampSim

ChampSim is a trace-based simulator for a microarchitecture study. You will use the ChampSim simulator in Programming Assignment 2 to implement various mitigation techniques.


## Build ChampSim

You can see a script file in the assignment folder with the name `build_champsim.sh`. This script file compiles and builds binary with the supplied parameters.

This script file takes the following parameters.

```
BRANCH=$1           # branch/*.bpred
L1I_PREFETCHER=$2   # prefetcher/*.l1i_pref
L1D_PREFETCHER=$3   # prefetcher/*.l1d_pref
L2C_PREFETCHER=$4   # prefetcher/*.l2c_pref
LLC_PREFETCHER=$5   # prefetcher/*.llc_pref
ITLB_PREFETCHER=$6  # prefetcher/*.itlb_pref
DTLB_PREFETCHER=$7  # prefetcher/*.dtlb_pref
STLB_PREFETCHER=$8  # prefetcher/*.stlb_pref


BTB_REPLACEMENT=$9     # prefetcher/*.btb_repl 
L1I_REPLACEMENT=${10}   # prefetcher/*.l1i_repl
L1D_REPLACEMENT=${11}   # prefetcher/*.l1d_repl
L2C_REPLACEMENT=${12}   # prefetcher/*.l2c_repl
LLC_REPLACEMENT=${13}   # prefetcher/*.llc_repl
ITLB_REPLACEMENT=${14}  # prefetcher/*.itlb_repl
DTLB_REPLACEMENT=${15}  # prefetcher/*.dtlb_repl
STLB_REPLACEMENT=${16}  # prefetcher/*.stlb_repl


NUM_CORE=${17}         # give 2
TAIL_NAME=${18}        # give as no
```


Since you have to do all the simulations for two cores, give the value for the `NUM_CORE` parameter as 2. Keep the other parameters as specified below.

```
./build_champsim.sh bimodal no no no no no no no lru lru lru lru lru lru lru lru 2 no
```

This command will create a binary in your bin folder. 

## Run ChampSim

In order to run this binary, you need to run the script file run_2core.sh. 
This script file takes the following arguments:
1. the path of your binary file 
2. workload number for 1st CPU as per workload.txt 
3. workload number for 2nd CPU as per workload.txt 


## Files of interest

To proceed with your assignment, you need to have an understanding of the following files:
1. `cache.cc`: present in /src folder
2. `main.cc`: present in /src folder
3. `lru.llc_repl`: present in /replacement folder


## The Traces
 You can find the traces here: https://drive.google.com/drive/folders/1tG-oFIsxFza3GYPzUsMvj_vmLYvQeEcL?usp=sharing



## How to install GCC 7

You'll require GCC 7 installed in your system to run ChampSim. Here are the steps to download GCC 7 in ubuntu: 

 
```
sudo apt update 
sudo add-apt-repository ppa:ubuntu-toolchain-r/test 

vim /etc/apt/sources.list 
sudo nano /etc/apt/sources.list 
```


Update the last line with deb [arch=amd64] http://archive.ubuntu.com/ubuntu  focal main universe 

``` 
sudo add-apt-repository ppa:ubuntu-toolchain-r/test 
sudo apt-get install gcc-7 
sudo apt-get install g++-7 

sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 0 
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 0 
```

In case the GCC and G++ is already present in `/usr/bin` (run ./gcc-7 –v in `/usr/bin`) installed and alternative is set then run  


```
sudo update-alternatives --config g++ 
sudo update-alternatives --config gcc
```