#!/bin/bash
#########################################################################
# File Name: test.sh
# Author: 陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2019.11.16
#########################################################################






BLACK_BLACK='\e[40;30;1m'
BLACK_RED='\e[40;31;1m'
BLACK_GREEN='\e[40;32;1m'
BLACK_YELLOW='\e[40;33;1m'
BLACK_BLUE='\e[40;34;1m'
BLACK_PURTPLE='\e[40;35;1m'
BLACK_DEEPGREEN='\e[40;36;1m'
BLACK_WHITE='\e[40;37;1m'



RED_BLACK='\e[41;30;1m'
RED_RED='\e[41;31;1m'
RED_GREEN='\e[41;32;1m'
RED_YELLOW='\e[41;33;1m'
RED_BLUE='\e[41;34;1m'
RED_PURTPLE='\e[41;35;1m'
RED_DEEPGREEN='\e[41;36;1m'
RED_WHITE='\e[41;37;1m'

GREEN_BLACK='\e[42;30;1m'
GREEN_RED='\e[42;31;1m'
GREEN_GREEN='\e[42;32;1m'
GREEN_YELLOW='\e[42;33;1m'
GREEN_BLUE='\e[42;34;1m'
GREEN_PURTPLE='\e[42;35;1m'
GREEN_DEEPGREEN='\e[42;36;1m'
GREEN_WHITE='\e[42;37;1m'


YELLOW_BLACK='\e[43;30;1m'
YELLOW_RED='\e[43;31;1m'
YELLOW_GREEN='\e[43;32;1m'
YELLOW_YELLOW='\e[43;33;1m'
YELLOW_BLUE='\e[43;34;1m'
YELLOW_PURTPLE='\e[43;35;1m'
YELLOW_DEEPGREEN='\e[43;36;1m'
YELLOW_WHITE='\e[43;37;1m'

BLUE_BLACK='\e[44;30;1m'
BLUE_RED='\e[44;31;1m'
BLUE_GREEN='\e[44;32;1m'
BLUE_YELLOW='\e[44;33;1m'
BLUE_BLUE='\e[44;34;1m'
BLUE_PURTPLE='\e[44;35;1m'
BLUE_DEEPGREEN='\e[44;36;1m'
BLUE_WHITE='\e[44;37;1m'

PURPLE_BLACK='\e[45;30;1m'
PURPLE_RED='\e[45;31;1m'
PURPLE_GREEN='\e[45;32;1m'
EPURPL_YELLOW='\e[45;33;1m'
PURPLE_BLUE='\e[45;34;1m'
PURPLE_PURTPLE='\e[45;35;1m'
PURPLE_DEEPGREEN='\e[45;36;1m'
PURPLE_WHITE='\e[45;37;1m'

DEEPGREEN_BLACK='\e[46;30;1m'
DEEPGREEN_RED='\e[46;31;1m'
DEEPGREEN_GREEN='\e[46;32;1m'
DEEPGREEN_YELLOW='\e[46;33;1m'
DEEPGREEN_BLUE='\e[46;34;1m'
DEEPGREEN_PURTPLE='\e[46;35;1m'
DEEPGREEN_DEEPGREEN='\e[46;36;1m'
DEEPGREEN_WHITE='\e[46;37;1m'


WHITE_BLACK='\e[47;30;1m'
WHITE_RED='\e[47;31;1m'
WHITE_GREEN='\e[47;32;1m'
WHITE_YELLOW='\e[47;33;1m'
WHITE_BLUE='\e[47;34;1m'
WHITE_PURTPLE='\e[47;35;1m'
WHITE_DEEPGREEN='\e[47;36;1m'
WHITE_WHITE='\e[47;37;1m'


COLOR_RESET='\e[0m'

echo -e "${DEEPGREEN_RED}     ********************************颜色配置**********************   ${COLOR_RESET}\n"

echo -e  "各种颜色.....\n"

echo -e  "${BLACK_BLACK}黑底黑字${COLOR_RESET}   ${BLACK_RED}黑底红字${COLOR_RESET}   ${BLACK_GREEN}黑底绿字${COLOR_RESET}   ${BLACK_YELLOW}黑底黄字${COLOR_RESET}   ${BLACK_BLUE}黑底蓝字${COLOR_RESET}   ${BLACK_PURTPLE}黑底紫字${COLOR_RESET}   ${BLACK_DEEPGREEN}黑底深绿字${COLOR_RESET}   ${BLACK_WHITE}黑底白字${COLOR_RESET}\n"

echo -e  "${RED_BLACK}红底黑字${COLOR_RESET}   ${RED_RED}红底红字${COLOR_RESET}   ${RED_GREEN}红底绿字${COLOR_RESET}   ${RED_YELLOW}红底黄字${COLOR_RESET}   ${RED_BLUE}红底蓝字${COLOR_RESET}   ${RED_PURTPLE}红底紫字${COLOR_RESET}   ${RED_DEEPGREEN}红底深绿字${COLOR_RESET}   ${RED_WHITE}红底白字${COLOR_RESET}\n"

echo -e  "${GREEN_BLACK}绿底黑字${COLOR_RESET}   ${GREEN_RED}绿底红字${COLOR_RESET}   ${GREEN_GREEN}绿底绿字${COLOR_RESET}   ${GREEN_YELLOW}绿底黄字${COLOR_RESET}   ${GREEN_BLUE}绿底蓝字${COLOR_RESET}   ${GREEN_PURTPLE}绿底紫字${COLOR_RESET}   ${GREEN_DEEPGREEN}绿底深绿字${COLOR_RESET}   ${GREEN_WHITE}绿底白字${COLOR_RESET}\n"

echo -e  "${YELLOW_BLACK}黄底黑字${COLOR_RESET}   ${YELLOW_RED}黄底红字${COLOR_RESET}   ${YELLOW_GREEN}黄底绿字${COLOR_RESET}   ${YELLOW_YELLOW}黄底黄字${COLOR_RESET}   ${YELLOW_BLUE}黄底蓝字${COLOR_RESET}   ${YELLOW_PURTPLE}黄底紫字${COLOR_RESET}   ${YELLOW_DEEPGREEN}黄底深绿字${COLOR_RESET}   ${YELLOW_WHITE}黄底白字${COLOR_RESET}\n"

echo -e  "${BLUE_BLACK}蓝底黑字${COLOR_RESET}   ${BLUE_RED}蓝底红字${COLOR_RESET}   ${BLUE_GREEN}蓝底绿字${COLOR_RESET}   ${BLUE_YELLOW}蓝底黄字${COLOR_RESET}   ${BLUE_BLUE}蓝底蓝字${COLOR_RESET}   ${BLUE_PURTPLE}蓝底紫字${COLOR_RESET}   ${BLUE_DEEPGREEN}蓝底深绿字${COLOR_RESET}   ${BLUE_WHITE}蓝底白字${COLOR_RESET}\n"

echo -e  "${PURPLE_BLACK}紫底黑字${COLOR_RESET}   ${PURPLE_RED}紫底红字${COLOR_RESET}   ${PURPLE_GREEN}紫底绿字${COLOR_RESET}   ${PURPLE_YELLOW}紫底黄字${COLOR_RESET}   ${PURPLE_BLUE}紫底蓝字${COLOR_RESET}   ${PURPLE_PURTPLE}紫底紫字${COLOR_RESET}   ${PURPLE_DEEPGREEN}紫底深绿字${COLOR_RESET}   ${PURPLE_WHITE}紫底白字${COLOR_RESET}\n"

echo -e  "${DEEPGREEN_BLACK}深绿底黑字${COLOR_RESET}   ${DEEPGREEN_RED}深绿底红字${COLOR_RESET}   ${DEEPGREEN_GREEN}深绿底绿字${COLOR_RESET}   ${DEEPGREEN_YELLOW}深绿底黄字${COLOR_RESET}   ${DEEPGREEN_BLUE}深绿底蓝字${COLOR_RESET}   ${DEEPGREEN_PURTPLE}深绿底紫字${COLOR_RESET}   ${DEEPGREEN_DEEPGREEN}深绿底深绿字${COLOR_RESET}   ${DEEPGREEN_WHITE}深绿底白字${COLOR_RESET}\n"

echo -e  "${WHITE_BLACK}白底黑字${COLOR_RESET}   ${WHITE_RED}白底红字${COLOR_RESET}   ${WHITE_GREEN}白底绿字${COLOR_RESET}   ${WHITE_YELLOW}白底黄字${COLOR_RESET}   ${WHITE_BLUE}白底蓝字${COLOR_RESET}  ${WHITE_PURTPLE}白底紫字${COLOR_RESET}   ${WHITE_DEEPGREEN}白底深绿字${COLOR_RESET}   ${WHITE_WHITE}白底白字${COLOR_RESET}\n"


PASSWD="@chen1013"

echo -e "\e[46;31;1m\t\t\t\t\t\t 系统更新.....\e[0m \n"


echo -e "\033[41m\033[37m\033[1m\033[4m红底+白字+高亮+下划线\033[0m \n"



echo -e "${DEEPGREEN_RED}                颜色结束                       ${COLOR_RESET}\n"



echo "hello, jack!!!"

for file in `ls ./`
do
    echo ${file}
done


# 显示换行
 echo -e "OK! \n" # -e 开启转义
 echo "It is a test"

echo -e  " ${WHITE_BLUE}------------1-------------------${COLOR_RESET}\n"


s="hello,jack!!!"

echo -e 's 为 ${s}\n,lllllllllll\n'

echo -e "s 为 ${s}\n, jjjjjj\n"

# a 修饰成只读变量
 readonly s

S="dddddd\n"

# unset 删除变量，但是无法删除只读变量
# unset a
echo -e ${s}

echo -e ${S}

unset S

echo -e ${S}
echo -e "${WHITE_BLUE}---------------3-----------------${COLOR_RESET}\n"

a=1234
let "a+=1"
echo ${a}

b=${a/12/BB}

echo ${b}

let "b+=1"
echo ${b}

e=""
echo ${e}

# 变量 e 定义为空值
 e=""
echo ${e}  # Output: 没有任何输出

 let "e+=1" # 空值 + 1
echo "e = ${e}"  # Output: 1

# 变量 f 未定义
 echo "f = $f"   # Output: f =

let "f+=1"
echo "f = ${f}" # Output: f = 1



echo -e " ${WHITE_BLUE}----------------4 执行数学运算 --------------------${COLOR_RESET}\n"


:<<EOF

在shell脚本中有以下几种途径来进行数学运算。
1. expr 命令
2. 使用方括号
3. 使用双圆括号:$(( operation ))。


1. expr命令

操作符                              描述

ARG1 | ARG2             如果ARG1 既不是null也不是零值,返回ARG1 ;否则返回ARG2
ARG1 & ARG2             如果没有参数是null或零值,返回ARG1 ;否则返回0
ARG1 < ARG2             如果ARG1 小于ARG2,返回1;否则返回0
ARG1 <= ARG2            如果ARG1 小于或等于ARG2,返回1;否则返回0
ARG1 = ARG2             如果ARG1 等于ARG2,返回1;否则返回0
ARG1 != ARG2            如果ARG1 不等于ARG2 ,返回1;否则返回0
ARG1 >= ARG2            如果ARG1 大于或等于ARG2,返回1;否则返回0
ARG1 > ARG2             如果ARG1 大于ARG2,返回1;否则返回0
ARG1 + ARG2             返回ARG1 和ARG2 的算术运算和
ARG1 - ARG2             返回ARG1 和ARG2 的算术运算差
ARG1 * ARG2             返回ARG1 和ARG2 的算术乘积
ARG1 / ARG2             返回ARG1 被ARG2 除的算术商
ARG1 % ARG2             返回ARG1 被ARG2 除的算术余数
STRING : REGEXP         如果REGEXP 匹配到了STRING中的某个模式,返回该模式匹配
match STRING REGEXP     如果REGEXP 匹配到了STRING中的某个模式,返回该模式匹配
substr STRING POS LENGTH   返回起始位置为POS (从1 开始计数)、长度为LENGTH个字符的子字符串
index STRING CHARS       返回在STRING 中找到CHARS字符串的位置;否则,返回0
length STRING             返回字符串STRING的数值长度
TOKEN                  将TOKEN 解释成字符串,即使是个关键字
(EXPRESSION)           返回EXPRESSION的值






2. 使用方括号
在bash中,在将一个数学运算结果赋给某个变量时,可以用美元符和方括号($[ operation ])将数学表达式围起来。

用方括号执行shell数学运算比用expr命令方便很多。这种技术也适用于shell脚本。


3. 使用双圆括号:  $(( operation ))。


4. let语句

EOF


var1=$[1 + 5]
echo $var1



var2=$[$var1 * 2]
echo $var2


var1=100
var2=50
var3=45
var4=$[$var1 * ($var2 - $var3)]
echo The final result is $var4



value1=10
value2=15
value3=$(( $value1 * $value2 ))
echo "The answer is $value3"


func1()
{
    echo "This is an example of a function"
}
count=1
while [ $count -le 5 ]; do
    func1
    count=$(( $count + 1 ))
done
echo "This is the end of the loop"
func1
echo "This is the end of the script"


# (())内不支持小数
value1=$((4*5))
(( value2 = 4 * 5 ))
printf "%6.3f\n" $value1 $value2



# let 不支持小数
let value1=" 4 * 5 / 3 "
echo $value1
printf "%6.3f\n" $value1


echo -e " ${WHITE_BLUE}----------------5--------------------${COLOR_RESET}\n"



echo $#       #返回向脚本传递的参数的个数
echo  "The last parameter was ${!#}"

#  $*变量会将命令行上提供的所有参数当作一个单词保存。这个单词包含了命令行中出现的每一个参数值。基本上$*变量会将这些参数视为一个整体,而不是多个个体。
echo -e "$* \n"  #以一个单字符串显示所有向脚本传递的参数
echo "Using the \$* method: $*"

#  $@变量会将命令行上提供的所有参数当作同一字符串中的多个独立的单词。这样你就能够遍历所有的参数值,得到每个参数。这通常通过for命令完成。
echo -e "$@ \n"  #与 $* 相同，但是使用时加引号，并在引号中返回每个参数。
echo "Using the \$@ method: $@"

# 注意,从表面上看,两个变量产生的是同样的输出,都显示出了所有命令行参数。
echo
count=1
for param in "$*"; do
    echo "\$* Parameter #$count = $param"
    count=$[ $count + 1 ]
done


echo
count=1

for param in "$@";do
    echo "\$@ Parameter #$count = $param"
    count=$[ $count + 1 ]
done
echo -e " ${WHITE_BLUE}-----------------6 数组 ------------------${COLOR_RESET}\n"

my_arr=(value1 value2 value3 value4)

echo -e "${my_arr[2]} \n"  #访问数组元素的一般格式

# 遍历数组格式 1
echo -e  "my_arr: ${my_arr[*]}\n"

# 遍历数组格式 2
echo -e "my_arr: ${my_arr[@]}\n"

#获取数组长度格式 1
echo -e " 数组 my_arr 长度为： ${#my_arr[*]} \n"

#获取数组长度格式 2
echo -e " 数组 my_arr 长度为： ${#my_arr[@]} \n"

echo -e " ${WHITE_BLUE}-----------------6------------------${COLOR_RESET}\n"

#定义字符串
str1=hello
str2='hello'
str3="hello"

echo $str1
echo $str2
echo $str3

#获取字符串的长度
my_str="hello world"
echo "my_str length: ${#my_str}"

#字符串拼接
str1="hello"
str2="world"

str3=${str1}"  "${str2}
echo ${str3}

#提取字符串

#从位置 1 开始提取子串
str="hello world"

sub_str=${str:1}
echo -e "sub_str1: ${sub_str}\n"

#从位置 1 开始提取长度为 3 的子串
str="hello world"

sub_str=${str:1:3}
echo -e  "sub_str2: ${sub_str}\n"

#------ 删除子串 ----------------------

#表达式                        	含义
#${string#substring}	       从 string 的开头，删除最短匹配 substring 的子串
#${string##substring}	       从 string 的开头，删除最长匹配 substring 的子串
#${string% substring}	       从 string 的结尾，删除最短匹配 substring 的子串
#${string%% substring}	       从 string 的结尾，删除最长匹配 substring 的子串

#记忆：

#   #表示从头匹配，% 表示从尾匹配
#   一个符号（# 或者 %）表示最短匹配，两个符号（## 或者 %%）表示最长匹配

str="abcabcdefabcabc"

# 从 str 的开头，删除最短匹配的以 a 开头 c 结尾的子串
# 将删除最左端的 abc
# 输出：abcdefabcabc
echo -e  " str1 = ${str#a*c} \n"

# 从 str 的开头，删除最长匹配以 a 开头 b 结尾的子串
# 将删除 abcabcdefabcab
# 输出：c
echo -e  " str2 = ${str##a*b}\n"

# 从 str 的结尾，删除最短匹配以 a 开头 c 结尾的子串
# 将删除最右端的 abc
# 输出：abcabcdefabc
echo -e  " str3 = ${str%a*c} \n"

# 从 str 的结尾，删除最长匹配以 a 开头 c 结尾的子串
# 将删除整个字符串
# 输出：空
echo -e  " str4 = ${str%%a*b}\n"


# ---------------------------------------------- 替换子串 -----------------

#  --- 表达式 ------------------------------- 含义 ------------------
#  ${string/substring/replacement}	      使用 $replacement 来代替第一个匹配的 $substring
#  ${string//substring/replacement}	      使用 $replacement 代替所有匹配的 $substring
#  ${string/#substring/replacement}    	  如果 $string 的前缀匹配 $substring, 那么就用 $replacement 来代替匹配到的 $substring
#  ${string/% substring/replacement}	      如果 $string 的后缀匹配 $substring, 那么就用 $replacement 来代替匹配到的 $substring

#实例：

str="abcdefabc"

# 用 hello 替换第一个 abc
echo -e  " STR1 = ${str/"abc"/"hello"} \n"    # 输出：hellodefabc

# 用 hello 替换所有的 abc
echo -e  " STR2 = ${str//"abc"/"hello"} \n"   # 输出：hellodefhello

# 前缀匹配替换
echo -e  " STR3 = ${str/#"abc"/"world"} \n"   # 输出：worlddefabc

# 后缀匹配替换
echo -e  " STR4 = ${str/%"abc"/"world"} \n"  # 输出：abcdefworld


echo -e " ${WHITE_BLUE}-----------------6------------------ ${COLOR_RESET}\n"

for skill in C++ C Python Java; do
    echo -e "I am good at ${skill} Script \n"
done


for skill in "C++ C Python Java"; do
    echo -e "I am good at ${skill} Script \n"
done

skills="C++ C Python Java"
for skill in ${skills}; do
    echo -e "I am good at ${skill} Script \n"
done

for skill in "'C++' 'Python' 'Java'"; do
    echo -e "I am good at ${skill} Script \n"
done


for IP in "129.20.1.11 129.20.1.12 169.28.1.33"; do
    echo -e "Now IP is ${IP}\n"
done


for IP in 129.20.1.11 129.20.1.12 169.28.1.33; do
    echo -e "Now IP is ${IP}\n"
done

#sudo cp ./test.sh  ./fundenment.sh

your_name="runboy"
greeting_1="hello, "${your_name}"!!"
greeting_2='hello, '$your_name' !'
greeting_3='hello, '${your_name}' !'
greeting_4='hello, ${your_name} !'
greeting_5='hello, $your_name !'
greeting_6="hello, $your_name !"

echo -e "${greeting_1} \n"
echo -e "${greeting_2} \n"
echo -e "${greeting_3} \n"
echo -e "${greeting_4} \n"
echo -e "${greeting_5} \n"
echo -e "${greeting_6} \n"


echo -e " 请输入您的名字：\n"
read name
echo -e "hello, ${name}\n"
echo -e "hello, ${1}\n"

echo -e "it is dick\n" > test.txt

# 最全时间格式
echo  `date`
# 年月日
echo  `date +%y%m%d`
# 时分
echo  `date +%H%M`
#
echo  `date +%B%d,%T`
#时分
echo  `date +%k%M`

echo  `date +%s`

printf "%-10s %-8s %-4s\n"    姓名 性别 体重kg
printf "%-10s %-8s %-4.2f\n"  "郭靖" 男 "66.1234"
printf "%-10s %-8s %-4.2f\n"  '杨过' 男 '48.6543'
printf "%-10s %-8s %-4.2f\n"  郭芙 女 47.9876

printf "%s\n" "aaaaaaaa" "ssssss"

printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------7----------------------"
# format-string 为双引号
printf "%d %s\n" 1 "abc"

# 单引号与双引号效果一样
printf '%d %s\n' 1 "abc"

# 没有引号也可以输出
printf "%s\n" abcdef

# 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf "%s\n" abc def

printf "%s\n" 123 456

printf "%s %s %s\n" a b c d e f g h i j

# 如果没有 arguments，那么 % s 用 NULL 代替，% d 用 0 代替
printf "%s and %d \n"

printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------8----------------------"

a=123
b=123

if test $[a] -ge $[b]
then
    echo "a >= b"
else
    echo "a<b"
fi

#代码中的 [] 执行基本的算数运算
a=5
b=6

result=$[a+b] # 注意等号两边不能有空格
echo -e  "result 为： $result \n"

result=$[$a+$b] # 注意等号两边不能有空格
echo -e  "result 为： $result \n"

result1=$(($a+$b)) # 注意等号两边不能有空格，a,b 不能用 {} 括起来
echo -e  "result1 为： $result1 \n"

result1=$((a+b)) # 注意等号两边不能有空格
echo -e  "result1 为： $result1 \n"


printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------9. if else ----------------------"

num1="ru1noob"
num2="runoob"
if test $num1 = $num2
then
    echo ' 两个字符串相等！'
else
    echo ' 两个字符串不相等！'
fi

printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------10. case----------------------"

echo ' 输入 1 到 4 之间的数字:'
echo ' 你输入的数字为:'
read aNum
case $aNum in
    1)  echo ' 你选择了 1'
    ;;
    2)  echo ' 你选择了 2'
    ;;
    3)  echo ' 你选择了 3'
    ;;
    4)  echo ' 你选择了 4'
    ;;
    *)  echo ' 你没有输入 1 到 4 之间的数字'
    ;;
esac


case $USER in
    rich | barbara)
        echo "Welcome, $USER"
        echo "Please enjoy your visit";;
    testing)
        echo "Special testing account";;
    jessica)
        echo "Do not forget to log off when you're done";;
    jack)
        echo " Oh, Jack, I have wating you for such a long time....";;
    *)
        echo "Sorry, you are not allowed here";;
esac

printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------11.  for----------------------"

for str in This is a string
do
    echo -e  "${str}\n"
done

printf "${WHITE_BLUE}%s${COLOR_RESET}\n" " ----------------12. while---------------------"

int=1
while((${int}<=10))
do
    echo ${int}
    let "int+=1"  #这里可以写 int++, "int++" int+=1 都可以
 done

echo -e "\n ${WHITE_BLUE}----------------13. until------------------${COLOR_RESET}\n"
a=0

until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done


printf  "\n ${WHITE_BLUE}----------------14. break----------------------${COLOR_RESET}\n"

:<<EOF
#无限循环语法格式：
while :
do
    command
done
 或者
 while true
do
    command
done
 或者
 for (( ; ; ))
EOF


while true  #或 while :
do
    echo -n " 请输入一个数字:"
    read aNum
    case ${aNum} in
        1|2|3|4|5) echo -e  " 你输入的数字为 ${aNum}\n"
            ;;
        *) echo -e  " 你输入的数字不是 1 到 5 之间的数字，游戏结束 \n"
            break
            ;;
    esac
done

# break 命令是退出循环的一个简单方法。可以用break 命令来退出任意类型的循环,包括while和until循环。
# 有几种情况可以使用break命令,本节将介绍这些方法。

#1 跳出单个循环


for var1 in 1 2 3 4 5 6 7 8 9 10
do
    if [ $var1 -eq 5 ]
    then
        break
    fi
    echo "Iteration number: $var1"
done
echo -e "The for loop is completed"

#2 for循环通常都会遍历列表中指定的所有值。但当满足if-then的条件时, shell会执行break命令,停止for循环。
# 这种方法同样适用于while和until循环。
var1=1
while [ $var1 -lt 10 ]
do
    if [ $var1 -eq 5 ];then
        break
    fi
    echo -e "Iteration : $var1\n"
    var1=$[ $var1+1 ]
done
echo -e "The while loop is completed\n"

# 跳出内部循环, 在处理多个循环时,break命令会自动终止你所在的最内层的循环
for (( a=1; a<4; a++ )); do
    echo "outer loop: $a"
    for(( b=1; b<100; b++ )); do
        if [ $b -eq 5 ]; then
            break
        fi
        echo -e "   Inner loop : $b"
    done
done


#3 有时你在内部循环,但需要停止外部循环。break命令接受单个命令行参数值: break n

for (( a=1; a<4; a++ )); do
    echo -e "Outer loop: $a"
    for (( b=1; b<100; b++ )); do
        if [ $b -gt 4 ]
        then
            break 2
        fi
        echo "  Inner Loop:$b"
    done
done


printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------15. continue----------------------\n"

# :<<EOF
while :
do
    echo -n " 输入 1 到 5 之间的数字: "
    read aNum
    case $aNum in
        1|2|3|4|5) echo -e " 你输入的数字为 $aNum! \n"
        ;;
        *) echo -e " 你输入的数字不是 1 到 5 之间的！\n"
            # continue
            echo " 游戏结束 "
            break
        ;;
    esac
done

# EOF


for (( var1 = 1; var1 < 15; var1++ ));do
    if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
    then
        continue
    fi
    echo "Iteration number: $var1"
done



while echo "while iteration: $var1"
    [ $var1 -lt 15 ];do
    if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
    then
        continue
    fi
    echo "Inside iteration number: $var1"
    var1=$[ $var1 + 1 ]
done



for (( a = 1; a <= 5; a++ ));do
    echo "Iteration $a:"
    for (( b = 1; b < 3; b++ ));do
        if [ $a -gt 2 ] && [ $a -lt 4 ]
        then
            continue 2
        fi
        var3=$[ $a * $b ]
        echo "
        The result of $a * $b is $var3"
    done
done


echo -e "\n ${WHITE_BLUE}------------16. 重定向 ------------------${COLOR_RESET}\n"

who > users

wc -l < users

cat << ASSS
 欢迎来到
菜鸟教程
 www.runoob.com
ASSS

echo -e "\n ${WHITE_BLUE}------------17. \`\`，(),[],(()),[[]],expr, 等的用法 --------------------${COLOR_RESET}\n"

#  ``：引用一个命令的执行结果，$() 也是一样
#  在 bash shell 中，$() 与 ``(反引号) 都是用来做命令替换 (command substitution) 的。

echo -e " 当前目录 1:`pwd`"

echo -e " 当前目录 2:$(pwd)"

path1=`pwd`
echo -e " 当前目录 3: ${path1}"

path2=$(pwd)
echo -e " 当前目录 4: ${path2}"

string=expr pwd    #  = 两边不能有空格

 echo -e "ls -l 输出：`ls -l`"


:<<EOF
echo `echo \\` 与 echo $(echo \\) 的输出分别是什么？解释原因。
原因： `` 里面的 \ 是一个特殊字符，可以用它来引用特殊的字符（当然包括它自身 \），而 $() 里面的 \ 只是普通字符。
echo `echo \\` 命令，里层的 echo \\ 得到的结果 \，于是外层命令为 echo \, 输出结果就为空了。
echo $(echo \\) 命令，里层的 \ 不再作为特殊字符，其输出就是 \\, 于是外层命令为 echo \\, 输出结果就为 \ 了。
EOF

echo -e " echo \`echo \\ \` 输出:\n"
echo `echo \\`

echo -e " echo \$(echo \\\\\\) 输出:\n"
echo $(echo \\)

x=10
y=20

echo "x=${x}, y=${y}"

val1=$(($x+$y))
echo " val1 ${x} + ${y} = $val1"

val2=$((x+y))
echo " val2 ${x} + ${y} = $val2"

val3=`expr ${x} + ${y}`
echo " val3 ${x} + ${y} = $val3"

let val4=${x}+${y}
echo " val4 ${x} + ${y} = $val4"


:<<EOF
[] 即为 test 命令的另一种形式。
你必须在左括号的右侧和右括号的左侧各加一个空格，否则会报错。
test命令可以判断三类条件:
 数值比较
 字符串比较
 文件比较

 数值比较
-eq 检测两个数是否相等，相等返回 true。                     [$a -eq $b] 返回 false。
-ne 检测两个数是否不相等，不相等返回 true。                 [$a -ne $b] 返回 true。
-gt 检测左边的数是否大于右边的，如果是，则返回 true。       [$a -gt $b] 返回 false。
-lt 检测左边的数是否小于右边的，如果是，则返回 true。       [$a -lt $b] 返回 true。
-ge 检测左边的数是否大于等于右边的，如果是，则返回 true。   [$a -ge $b] 返回 false。
-le 检测左边的数是否小于等于右边的，如果是，则返回 true。   [$a -le $b] 返回 true。
EOF

a=1
if [ $a -ge  0 ]  #对于数字，-eq,-ne,-gt,-ge,-lt,-le, 或者转义，但是只能转义 ">,<"，\<,\>
then
    echo -e "a 大于等于 0\n"
else
    echo -e "a 小于 0\n"
fi


str="abccc"

:<<EOF
 字符串比较

str1 = str2
 检查str1是否和str2相同
str1 != str2
 检查str1是否和str2不同
str1 < str2
 检查str1是否比str2小
str1 > str2
 检查str1是否比str2大
-n str1
 检查str1的长度是否非0
-z str1
 检查str1的长度是否为0

大于符号或小于符号必须要转义，否则会被理解成重定向。
EOF

if [ ${str} = "abc" ]  #对于字符串，= ，！=， -z ，-n
then
    echo -e "str 等于 \"abc\" \n"
else
    echo -e "str 不等于 \"abc\" \n"
fi



echo -e "\n ${WHITE_BLUE}------------------------18.  -------------------------${COLOR_RESET}\n"
<<EOF
 文件比较
文件测试运算符用于检测 Unix 文件的各种属性。
属性检测描述如下：
操作符  说明    举例
-b file 检测文件是否是块设备文件，如果是，则返回 true。 [-b $file] 返回 false。
-c file 检测文件是否是字符设备文件，如果是，则返回 true。   [-c $file] 返回 false。
-d file 检测文件是否是目录，如果是，则返回 true。   [-d $file] 返回 false。
-f file 检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。 [-f $file] 返回 true。
-g file 检测文件是否设置了 SGID 位，如果是，则返回 true。   [-g $file] 返回 false。
-k file 检测文件是否设置了粘着位 (Sticky Bit)，如果是，则返回 true。    [-k $file] 返回 false。
-p file 检测文件是否是有名管道，如果是，则返回 true。   [-p $file] 返回 false。
-u file 检测文件是否设置了 SUID 位，如果是，则返回 true。   [-u $file] 返回 false。
-r file 检测文件是否可读，如果是，则返回 true。 [-r $file] 返回 true。
-w file 检测文件是否可写，如果是，则返回 true。 [-w $file] 返回 true。
-x file 检测文件是否可执行，如果是，则返回 true。   [-x $file] 返回 true。
-s file 检测文件是否为空（文件大小是否大于 0），不为空返回 true。   [-s $file] 返回 true。
-e file 检测文件（包括目录）是否存在，如果是，则返回 true。 [-e $file] 返回 true。
其他检查符：
-S: 判断某文件是否 socket。
-L: 检测文件是否存在并且是一个符号链接。
EOF

file="/var/www/runoob/test.sh"
file="/home/jack/.config"
if [ -r $file  ]
then
       echo " 文件可读 "
   else
          echo " 文件不可读 "
fi
if [ -w $file  ]
then
       echo " 文件可写 "
   else
          echo " 文件不可写 "
fi
if [ -x $file  ]
then
       echo " 文件可执行 "
   else
          echo " 文件不可执行 "
fi
if [ -f $file  ]
then
       echo " 文件为普通文件 "
   else
          echo " 文件为特殊文件 "
fi
if [ -d $file  ]
then
       echo " 文件是个目录 "
   else
          echo " 文件不是个目录 "
fi
if [ -s $file  ]
then
       echo " 文件不为空 "
   else
          echo " 文件为空 "
fi
if [ -e $file  ]
then
       echo " 文件存在 "
   else
          echo " 文件不存在 "
fi

:<<EOF
(()) 及 [[ ]] :它们分别是 [ ] 的针对数学比较表达式和字符串表达式的加强版。

$(()) 是用来作整数运算的。
在 bash 中， $(()) 的整数运算符号大致有这些：
+ - * /    分别为 "加、减、乘、除"。
%          余数运算，(模数运算)
++          自加
 --          自减
双括号命令允许你在比较过程中使用高级数学表达式。test 命令只能在比较中使用简单的算术操作。双括号命令提供了更多的数学符号,这些符号对于用过其他编程语言的程序员而言并不陌生。双括号命令的格式如下:(( expression ))
expression可以是任意的数学赋值或比较表达式。除了test命令使用的标准数学运算符,还支持其他的
常见的用于 (()) 的测试符号有如下这些：
符号	符号名称
 <	   小于号
 >   	大于号
 <=	   小于或等于
 >=	   大于或等于
 ==	   等于
 !=	   不等于
 (()) 不需要再将表达式里面的大小于符号转义，除了可以使用标准的数学运算符外，还增加了以下符号：
val++
val--
++val
--val
!          逻辑求反
 &&         逻辑和
 ||         逻辑或
 **         幂运算
 <<         左移运算符
 >>         右移运算符
 ~          “取反” 运算符,位求反
 &          “按位与” 运算符，位布尔和
 |          位布尔或
 ^          “异或” 运算符
双括号中的变量可以在其前面加 $ 符号来替换， 也可以不用。括号内支持多个表达式用逗号分开。
单纯用 (()) 也可重定义变量值，其实就是赋值运算符，比如 a=5; ((a++)) 可将 $a 重定义为 6



双方括号命令提供了针对字符串比较的高级特性。双方括号命令的格式如下:
[[ expression ]]
 使用 [[...]] 条件判断结构，而不是 [ ... ]，能够防止脚本许多逻辑错误，比如，&&、||、< 和 > 操作符能够
正常存在于 [[]] 条件判断结构中，但是如果出现在 [ ] 结构中的话，会报错。比如可以直
接使用 if [[$a != 1 && $a != 2]], 如果不适用双括号，则为 if [ $a -ne 1 ] && [ $a != 2 ] 或者 if [ $a -ne 1 -a $a != 2 ]。
EOF

a=-1
if (( $a >=  0 )) #也可以用 if [[$a> 0]] 但是不能用 if [[ $a >= 0 ]]
then
    echo -e "a 大于等于 0\n"
else
    echo -e "a 小于 0\n"
fi

# >=号两边可以没有空格
if (($a>=0))
then
    echo -e "a 大于等于 0\n"
else
    echo -e "a 小于 0\n"
fi

# 无效
if [[ $a>=0 ]]
then
    echo -e "a 大于等于 0\n"
else
    echo -e "a 小于 0\n"
fi


# 无效
if [[ ${a}>=0 ]]
then
    echo -e "a 大于等于 0\n"
else
    echo -e "a 小于 0\n"
fi


# 报错
# if [[${a}>=0]]
# then
#     echo -e "a 大于等于 0\n"
# else
#     echo -e "a 小于 0\n"
# fi


# 报错
# if [[ ${a} >= 0 ]]
# then
#     echo -e "a 大于等于 0\n"
# else
#     echo -e "a 小于 0\n"
# fi


a=12

if (( ${a}!=1 && ${a} != 2 ))
then
    echo -e "a 不等于 1 且 a 不等于 2\n"
else
    echo -e "a 等于 1 或者等于 2\n"
fi


if [[ ${a}!=1 && ${a} != 2 ]]
then
    echo -e "a 不等于 1 且 a 不等于 2\n"
else
    echo -e "a 等于 1 或者等于 2\n"
fi

echo -e " 请输入你想进入的目录：\n"
read path
#cd ${path}

if [[ ${path} = "/home/jack/" ]]
then
    echo -e " 进入家目录 \n"
    cd ${path}
else
    echo -e " 进入非家目录 \n"
    cd ${path}
fi



echo -e "\n ${WHITE_BLUE}------------------------18. 文件测试 -------------------------${COLOR_RESET}\n"
echo -e " 当前目录:`pwd`"
cd /home/jack/

echo -e " 当前目录:`pwd`"

read -p " 请输入(等待10s)你的爱好：" -t 10 named

echo ${named}



