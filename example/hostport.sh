#!/bin/bash
#########################################################################
# File Name: hostport.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时45分16秒

# 此程序的功能是：
#########################################################################

HOST=$1
PORT="22 25 80 8080"
for PORT in $PORT; do
    if echo &>/dev/null >/dev/tcp/$HOST/$PORT; then
        echo "$PORT open"
    else
        echo "$PORT close"
    fi
done
