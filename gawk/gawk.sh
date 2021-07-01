# 语法
# awk [options] 'program' var=value file…
# awk [options] -f programfile var=value file…
# awk [options] 'BEGIN{ action;… } pattern{ action;… } END{ action;… }' file ...


# 常用命令选项
# -F fs：fs指定输入分隔符，fs可以是字符串或正则表达式，如-F:

# -v var=value：赋值一个用户定义变量，将外部变量传递给awk

# -f scripfile：从脚本文件中读取awk命令

# awk变量
# 变量：内置和自定义变量，每个变量前加 -v 命令选项




# 默认情况下，Awk命令用于打印文件的内容。在本例中，没有指定模式，因此操作应用于文件的每一行。
awk '{print}' linuxmi.txt



# 要打印与给定模式匹配的行，让我们打印其中包含单词“linuxmi”的所有行。
awk '/linuxmi/'{print}' linuxmi.txt

# Awk用于将一行分割成多个字段并打印出内容。让我们打印linuxmi.txt文件中行的第一部分和第二部分。
awk '{print $1,$2}' linuxmi.txt


# 注意$0输出整行。
# NR - 打印行以及行号。
awk '{print NR,$0}' linuxmi.txt


# 也可以用于指定从某个数字打印到另一个数字。让我们显示从第3行到第6行。
awk 'NR==3, NR==6 {print NR,$0}' linuxmi.txt

# NF - 输出每个记录（行）中包含的字段数
awk '{print NF}' linuxmi.txt



# OFS - 输出字段分隔符–用于指定输出值的分隔符。
awk 'OFS="/" {print $1,$4}' linuxmi.txt


#  BEGIN规则应该在任何文本处理之前执行一次，并且在执行其他任何操作之前先执行。
awk 'BEGIN{print sqrt(400)}'

# 实例1：点击回车出现hello world
gawk '{print "Hello World!"}' linuxmi.txt

# 实例2：使用数据字段变量
# $0 代表整个文本行；$n 代表文本行中的第n个数据字段。超过列，不显示。
gawk '{print $1}' test1.txt


# 按照冒号分割，显示系统里的账号。
gawk -F : '{print $1}' /etc/passwd

# 实例3：在程序脚本中使用多个命令，使用分号分割
# 赋值第四个字段，然后在打印全行。
echo "My name is Rich" | gawk '{$4="Christine"; print $0}'

# 给第四个元素赋值为空，变相删除
echo "my name is rich"| gawk -F " " '{print $4=null;print $0}'


# 实例4：从文件中读取程序


































































