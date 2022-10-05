#!/bin/sh
#python 3.x
#pwd /home/$USER/clashcheck
#nohup ./start.sh > /dev/null 2>&1 &

PID_NAME=clash
PID_NUM=`ps -ef |grep -w $PID_NAME|grep -v grep|wc -l`

while true
do
    if [ $PID_NUM -le 0 ];then
       /usr/bin/timeout -k 20 4m /usr/bin/python main.py
    else
       pkill -9 clash && sleep 24
    fi
done