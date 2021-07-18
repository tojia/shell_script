#!/bin/bash
#########################################################################
# File Name: 10K.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时36分56秒

# 此程序的功能是：将当前目录下大于 10K 的文件转移到 /tmp 目录，再按照文件大小顺序，从大到小输出文件名。
#########################################################################
# 目标目录
DIRPATH='/tmp'
# 查看目录
FILEPATH='.'

find "$FILEPATH" -size +10k -type f | xargs -i mv {} "$DIRPATH"
ls -lS "$DIRPATH" | awk '{if(NR>1) print $NF}'
