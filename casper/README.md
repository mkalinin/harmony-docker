# Description
Demo rig for Casper FFG. This sample runs two Harmony peers: miner and validator in a private network to show Casper contract interactions.

## Run

**Prerequisites:**
- Install [docker](https://docs.docker.com/install/)
- Install [docker-compose](https://docs.docker.com/compose/install/)
- Requires 4 GB of RAM

**Use command line:**
```
git clone --depth 1 https://github.com/mkalinin/harmony-docker.git && cd ./harmony-docker/casper
docker-compose up
```
**Note:** it takes some time to build images and get DAG file generated

**Check status**

Open http://localhost:8080 in your browser to get miner status and logs. 

There is a Casper tab to display votes, epoch initialing, deposits, withdrawals and other contract related actions.

**Note:** if you use Mac then replace `localhost` with address of the docker machine.

## Validator

By default validator starts in automatic fashion. 
To change validator state go to http://localhost:8081/terminal.

Then run validator commands from Terminal:
```
validator_start  - make deposit and start voting
validator_stop   - log out and wait for withdrawal
```
Check this link for validator's logic: 

https://github.com/ethereum/research/wiki/Casper-Version-1-Implementation-Guide#validator-logic

## Casper FFG
https://github.com/ethereum/casper/blob/master/IMPLEMENTATION.md
