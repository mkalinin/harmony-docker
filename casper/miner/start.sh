#!/bin/bash

# base
FLAGS="-Xmx3500m -DnetworkProfile=casper -Dserver.port=8545"

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

# coinbase
if [ "$COINBASE" != "" ]; then
  FLAGS="$FLAGS -Dmine.coinbase=$COINBASE"
fi

# block delay
if [ "$BLOCK_DELAY_MILLIS" ]; then
  FLAGS="$FLAGS -Dmine.minBlockTimeoutMsec=$BLOCK_DELAY_MILLIS"
fi

# log levels
FLAGS="$FLAGS -Dlogging.level.casper=TRACE -Dlogging.level.jsonrpc=ERROR -Dlogging.level.net=ERROR -Dlogging.level.sync=INFO"

export HARMONY_ETHER_CAMP_OPTS=$FLAGS
./harmony.ether.camp/bin/harmony.ether.camp
