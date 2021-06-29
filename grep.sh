#!/bin/bash
#########################################################################
# File Name: grep.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年06月28日 星期一 17时43分42秒
 
# 此程序的功能是：
#########################################################################


# 安装
#  sudo apt-get install grep

# 您可以通过以下命令检查grep版本来验证安装：
# grep --version

# 要显示/etc/passwd文件中包含字符串“bash”的所有行，需要运行以下命令:
grep bash /etc/passwd


#  如果搜索字符串包含空格，则需要用单引号或双引号将其括起:
grep "System message bus" /etc/passwd

#  ^符号匹配行首的空字符串。在下面的示例中，字符串“root”只有在行首出现时才匹配。
grep '^root' /etc/passwd


#  $要查找以字符串“bash”结尾的行，可以使用以下命令:
grep 'bash$' /etc/passwd

#  您还可以使用两个锚来构造正则表达式。例如，查看配置文件，不显示空行，请运行以下命令:
grep -v '^$' /etc/samba/smb.conf
#   -v 反转匹配的意义，来选择不匹配的行。

#  | 是或者的意思。例如：想查看cpu是否支持虚拟化：
grep 'vmx\|svm' /proc/cpuinfo

#  如果使用扩展正则表达式，则不需要转义|，如下所示:
grep -E 'svm|vmx' /proc/cpuinfo



#*************************************  如何使用Grep命令查找多个字符串  ******************************************************
#  使用 grep 命令基本正则表达式搜索多个匹配模式的语法如下：搜索某用户日志错误文件中出现的所有 fatal、error 和 critical 字符串。语法如下：
grep 'fatal\|error\|critical' /var/log/nginx/error.log
# 还需要注意的是，如果要搜索的字符串包含空格，需要用双引号将其括起来。


# 下面是使用扩展正则表达式的同一个示例，它不需要转义字符:
grep -E 'fatal|error|critical' /var/log/nginx/error.log


#  默认情况下，grep 命令是区分大小写的。要在搜索时忽略大小写，请调用 grep 加 -i （或 --ignore-case ）选项，示例如下：
grep -i 'fatal|error|critical' /var/log/nginx/error.log

#  当你只想搜索某个单词时，比如你想搜索的是单词 error ，grep 命令会输出所有包含 error 字符串的行，即它除了会输出包含 error 单词的行，还会输出包含 errorless 或 antiterrorists 等非 error 单词的行，这样是极不方便的。
#   因此要仅返回指定字符串是整词的行，或者是由非单词字符括起来的行，可以使用 grep 加 -w （或 --word-regexp ）选项：
grep -w 'fatal|error|critical' /var/log/nginx/error.log
#  值得注意的是，单词字符包括有字母、数字字符（比如 a-z、a-Z 和 0-9 ）以及下划线（ _ ），所有其他字符都被视为非单词字符。


