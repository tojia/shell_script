#!/bin/bash
#########################################################################
# File Name: less6.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时45分14秒

# 此程序的功能是：
#########################################################################

#示例语句：
#Bash also interprets a number of multi-character options.
#!/bin/bash
##############################################################
#shell打印示例语句中字母数小于6的单词
##############################################################
for s in Bash also interprets a number of multi-character options.; do
    n=$(echo $s | wc -c)
    if [ $n -lt 6 ]; then
        echo $s
    fi
done
