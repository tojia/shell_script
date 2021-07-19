#!/bin/bash
#########################################################################
# File Name: countfiles.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月19日 星期一 08时35分26秒

# 此程序的功能是：
# 让我们先看一个shell脚本，它会对 PATH 环境变量中定义的目录里的可执行文件进行计数。要
# 这么做的话，首先你得将 PATH 变量解析成单独的目录名。第6章介绍过如何显示 PATH 环境变量。
# $ echo $PATH
# /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/
# local/games
# $
# 根据Linux系统上应用程序所处的位置， PATH 环境变量会有所不同。关键是要意识到 PATH 中
# 的每个路径由冒号分隔。要获取可在脚本中使用的目录列表，就必须用空格来替换冒号。现在你
# 会发现sed编辑器用一条简单表达式就能完成替换工作。
# $ echo $PATH | sed 's/:/ /g'
# /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
# /usr/games /usr/local/games
# $
# 分离出目录之后，你就可以使用标准 for 语句中（参见第13章）来遍历每个目录。
# mypath=$(echo $PATH | sed 's/:/ /g')
# for directory in $mypath
# do
#     ...
# done
# 一旦获得了单个目录，就可以用 ls 命令来列出每个目录中的文件，并用另一个 for 语句来遍
# 历每个文件，为文件计数器增值。
# 这个脚本的最终版本如下
#########################################################################


# count number of files in your PATH
mypath=$(echo $PATH | sed 's/:/ /g')
count=0
for directory in $mypath
do
    check=$(ls $directory)
    for item in $check
    do
        count=$[ $count + 1  ]
    done
    echo "$directory - $count"
    count=0
done
