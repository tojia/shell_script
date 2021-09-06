#!/usr/bin/env bash
#########################################################################
# File Name: 2.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年09月06日 星期一 22时15分41秒

# 此程序的功能是：
#########################################################################



echo "PID for 2.sh = $$"
echo "In 2.sh get variable A=$A from 1.sh"

A=2
export A

echo -e "In 2.sh: variable A=$A\n"
