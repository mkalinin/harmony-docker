## Harmony miner
Miner node to run in a Casper network

## Run

**Prerequisites:**
- Install [docker](https://docs.docker.com/install/)

**Use command line:**
```
git clone --depth 1 https://github.com/mkalinin/harmony-docker.git && cd ./harmony-docker/casper/miner
docker build -t harmony-miner:casper .
docker run -d --name miner -eCOINBASE=cd2a3d9f938e13cd947ec05abc7fe734df8dd826 harmony-miner:casper
```

**Configuration:**
```
# path to genesis file
# default: casper.json
GENESIS=/root/path/genesis.json

# private key to derive node id
# default: random value
NODEKEY=41791102999c339c844880b23950704cc43aa840f3739e365323cda4dfa89e7a

# peer discovery node
# default: none
BOOTNODE=enode://3b4ca60e476367e69ddc0efd1d46652ac9799385e74aae8e90d076c7a3983d0f1e6901785097d6015032b14078164287dff714e194efb420fc70abd7d3e132b9@172.30.250.2:30303

# coinbase
# default: 0000000000000000000000000000000000000000
COINBASE=cd2a3d9f938e13cd947ec05abc7fe734df8dd826

# minimal blocks delay in millis
# default: 14000
BLOCK_DELAY_MILLIS=5000
```
