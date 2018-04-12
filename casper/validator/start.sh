#!/bin/bash

# base
FLAGS="-Xmx512m -DnetworkProfile=casper -Dserver.port=8545"

# genesis file
if [ "$GENESIS" != "" ]; then
  FLAGS="$FLAGS -DgenesisFile=$GENESIS"
fi

# peer pKey
if [ "$NODEKEY" != "" ]; then
  FLAGS="$FLAGS -Dpeer.privateKey=$NODEKEY"
fi

# bootnode
if [ "$BOOTNODE" != "" ]; then
  FLAGS="$FLAGS -Dpeer.discovery.ip.list.0=$BOOTNODE"
fi

# validator pKey
if [ "$VALIDATOR_KEY" != "" ]; then
  FLAGS="$FLAGS -Dcasper.validator.privateKey=$VALIDATOR_KEY"
fi

# validator pKey
if [ "$VALIDATOR_DEPOSIT_ETH" != "" ]; then
  FLAGS="$FLAGS -Dcasper.validator.deposit=$VALIDATOR_DEPOSIT_ETH"
fi

# log levels
FLAGS="$FLAGS -Dlogging.level.casper=TRACE -Dlogging.level.jsonrpc=ERROR -Dlogging.level.net=ERROR -Dlogging.level.sync=INFO"

export HARMONY_ETHER_CAMP_OPTS=$FLAGS
./harmony.ether.camp/bin/harmony.ether.camp
