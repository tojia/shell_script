#!/bin/bash
#########################################################################
# File Name: jstack.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时36分07秒

# 此程序的功能是：判断目录 /tmp/jstack 是否存在，不存在则新建一个目录，若存在则删除目录下所有内容。

#每隔 1 小时打印 inceptor server 的 jstack 信息，并以 jstack_${当前时间} 命名文件，每当目录下超过 10 个文件后，删除最旧的文件。#
#########################################################################
#!/bin/bash

DIRPATH='/tmp/jstack'
CURRENT_TIME=$(date +'%F'-'%H:%M:%S')

if [ ! -d "$DIRPATH" ]; then
    mkdir "$DIRPATH"
else
    rm -rf "$DIRPATH"/*
fi

cd "$DIRPATH"

while true; do
    sleep 3600
    # 这里需要将inceptor改后自己的java进程名称
    pid=$(ps -ef | grep 'inceptor' | grep -v grep | awk '{print $2}')
    jstack $pid >>"jstack_${CURRENT_TIME}"
    dir_count=$(ls | wc -l)
    if [ "$dir_count" -gt 10 ]; then
        rm -f $(ls -tr | head -1)
    fi
done
