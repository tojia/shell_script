#!/bin/bash
#########################################################################
# File Name: systeminfo.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2020年08月02日 星期日 18时46分31秒
# 此程序的功能是：
#########################################################################

clear

echo "
选择一个选项：
    1. 系统信息
    2. 可用和已用磁盘空间
    3. /home中每个用户的磁盘使用率
    0. 退出
"

read -p "输入您的选项[0-100] > "

if [[ $REPLY =~ ^[0-3]$ ]]; then
    if [[ $REPLY == 0 ]]; then
        echo "脚本结束."
        exit
    fi
    if [[ $REPLY == 1 ]]; then
        echo "Hostname: $HOSTNAME"
        uptime
        exit
    fi

    if [[ $REPLY == 2 ]];then
        df -h
        exit
    fi

    if [[ $REPLY == 3 ]]; then
        if [[ $(id -u) -eq 0 ]];then
            echo " /home (All Users)的使用"
            du -sh /home/*
        else
            echo "/home ($USER)的使用"
            du -sh $HOME
        fi
        exit
    fi
else
    echo "输入错误." >&2
    exit 1
fi

