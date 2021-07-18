#!/bin/bash
#########################################################################
# File Name: triangle.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时59分08秒

# 此程序的功能是：彩色等腰三角形
#########################################################################

read -p "Please input a num: " num
if [[ $num =~ [^0-9] ]];then
        echo "input error"
else
        for i in `seq 1 $num` ;do
                xing=$[2*$i-1]
                for j in `seq 1 $[$num-$i]`;do
                        echo -ne " "
                done
                for k in `seq 1 $xing`;do
                        color=$[$[RANDOM%7]+31]
                        echo -ne "\033[1;${color};5m*\033[0m"
                done
                echo
        done
fi

