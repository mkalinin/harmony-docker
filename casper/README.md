# Description
Demo rig for Casper FFG

## Run

**Prerequisites:**
- Install [docker](https://docs.docker.com/install/)
- Install [docker-compose](https://docs.docker.com/compose/install/)

**Use command line:**
```
git clone --depth 1 https://github.com/mkalinin/harmony-docker.git && cd ./harmony-docker/casper
docker-compose up
```
**Note:** it takes some time to build images and get DAG file generated

**Checking status:**

Open http://localhost:8080 in your browser to get miner status and logs. 

There is a Casper tab to display votes, epoch initialing, deposits, withdrawals and other contract related actions.

## Casper FFG
https://github.com/ethereum/casper/blob/master/IMPLEMENTATION.md
