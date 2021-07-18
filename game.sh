#!/bin/bash
#########################################################################
# File Name: game.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时58分56秒

# 此程序的功能是：国际象棋棋盘
#########################################################################



red="\033[1;41m  \033[0m"
yellow="\033[1;43m  \033[0m"

for i in {1..8};do
        if [ $[i%2] -eq 0 ];then
                for i in {1..4};do
                        echo -e -n "$red$yellow";
                done
                echo
        else
                for i in {1..4};do
                        echo -e -n "$yellow$red";
                done
                echo
        fi
done