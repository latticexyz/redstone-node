#! /bin/sh

cd /data

/usr/local/bin/op-node \
  --l1=$L1_URL \
  --l1.beacon.ignore \
  --l2=http://op-geth:8551 \
  --l2.jwt-secret=/data/geth/jwtsecret \
  --altda.enabled \
  --altda.da-server=https://da.pyropechain.com \
  --rpc.addr=0.0.0.0 \
  --rpc.port=8547 \
  --rpc.enable-admin \
  --p2p.static=/ip4/57.128.188.69/tcp/5222/p2p/16Uiu2HAmCKpxKe2T7RAMxYnDGoj6WpwPjGhKtqjkcceKmDDx7F4L,/ip4/79.127.239.88/tcp/5222/p2p/16Uiu2HAm69VqF7Ex5bPf127Rx7RaqLux3CHcxWFQJLTeGQNL5AMz,/ip4/135.125.118.180/tcp/5222/p2p/16Uiu2HAm26YQtWwqstwuAwGgsjn48Qa3Ss86SGP7pNu4KC1xgH5S \
  --rollup.config=/config/pyrope/rollup.json
