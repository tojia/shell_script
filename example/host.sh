#!/usr/bin/env bash
#########################################################################
# File Name: host.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 20时27分00秒

# 此程序的功能是：并发从数台机器中获取 hostname，并记录返回信息花费的时长，重定向到一个文件 hostname.txt 中，在全部完成后输出花费时长最短的那台机器的 CPU 信息。
#########################################################################


# 所以主机，以空格分隔
ALL_HOSTS=(127.0.0.1 128.0.0.2 129.20.11.21)



for host in ${ALL_HOSTS[*]}
do
{
    start_time=$(date +'%s')
    ssh $host "hostname" &>/dev/null
    sleep 2
    stop_time=$(date +'%s')
    time_consuming=$((stop_time-start_time))
    echo "$host: $time_consuming" >>hostname.txt
}&
done

wait

host=$(sort -n -k 2 hostname.txt | head -1 | awk -F':' '{print $1}')

ssh $host "top -b -n 1"






















