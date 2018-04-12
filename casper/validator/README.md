## Harmony validator
Casper Validator node

## Run

**Prerequisites:**
- Install [docker](https://docs.docker.com/install/)

**Use command line:**
```
git clone --depth 1 https://github.com/mkalinin/harmony-docker.git && cd ./harmony-docker/casper/validator
docker build -t harmony-validator:casper .
docker run -d --name miner -eVALIDATOR_KEY=41791102999c339c844880b23950704cc43aa840f3739e365323cda4dfa89e7a harmony-validator:casper
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

# validator private key
# default: none
VALIDATOR_KEY=41791102999c339c844880b23950704cc43aa840f3739e365323cda4dfa89e7a

# validator deposit in ETH
# default: 1500
VALIDATOR_DEPOSIT_ETH=2500
```
