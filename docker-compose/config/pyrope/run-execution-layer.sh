#! /bin/sh

if [ -e /data/geth ]
then
   echo Already initialized
else
  echo start initialization
  /usr/local/bin/geth init --datadir /data /config/pyrope/l2-genesis.json
  echo end initialization
fi

cd /data

/usr/local/bin/geth \
  --override.fjord=1724317200 \
  --datadir /data \
  --gcmode archive \
  --syncmode full \
  --networkid="695569" \
  --ipcdisable \
  --http \
  --http.port=8545 \
  --http.api="admin,engine,eth,web3,txpool,net,debug" \
  --http.addr="0.0.0.0" \
  --http.corsdomain="*" \
  --http.vhosts="*" \
  --ws \
  --ws.api="debug,eth,txpool,net,web3,engine" \
  --ws.port=8546 \
  --ws.addr="0.0.0.0" \
  --ws.origins="*" \
  --verbosity=3 \
  --authrpc.addr="0.0.0.0" \
  --authrpc.port=8551 \
  --authrpc.vhosts="*" \
  --rpc.allow-unprotected-txs \
  --rollup.sequencerhttp=https://rpc.pyropechain.com \
  --gpo.minsuggestedpriorityfee=1000000 \
  --nodiscover

