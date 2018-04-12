## Regular Harmony node
Regular node to run in a Casper network

## Run

**Prerequisites:**
- Install [docker](https://docs.docker.com/install/)

**Use command line:**
```
git clone --depth 1 https://github.com/mkalinin/harmony-docker.git && cd ./harmony-docker/casper/node
docker build -t harmony-node:casper .
docker run -d --name node -eNODEKEY=41791102999c339c844880b23950704cc43aa840f3739e365323cda4dfa89e7a harmony-node:casper
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
```
