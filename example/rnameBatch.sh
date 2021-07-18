#!/bin/bash
#########################################################################
# File Name: rnameBatch.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时45分23秒

# 此程序的功能是：
#########################################################################

# touch article_{1..3}.html
# ls
article_1.html article_2.html article_3.html
目的：把article改为bbs

方法1：

for file in $(ls *html); do
    mv $file bbs_${file#*_}
    # mv $file $(echo $file |sed -r 's/.*(_.*)/bbs\1/')
    # mv $file $(echo $file |echo bbs_$(cut -d_ -f2)
done
方法2：

for file in $(find . -maxdepth 1 -name "*html"); do
    mv $file bbs_${file#*_}
done
方法3：

# rename article bbs *.html
