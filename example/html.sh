#!/bin/bash
#########################################################################
# File Name: html.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时45分19秒

# 此程序的功能是：
#########################################################################

#方法1：

# find . -name "*.html" -exec du -k {} \; |awk '{sum+=$1}END{print sum}'

#方法2：

for size in $(ls -l *.html | awk '{print $5}'); do
    sum=$(($sum + $size))
done
echo $sum
