#!/bin/bash
#########################################################################
# File Name: test.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2019.11.16
#########################################################################


echo "hello, jack!!!"

for file in `ls ./`
do
    echo ${file}
done

echo -e  "------------1-------------------\n"


s="hello,jack!!!"

echo -e 's is ${s}\n,lllllllllll\n'

echo -e "s is ${s}\n, jjjjjj\n"

# a修饰成只读变量
readonly s

S="dddddd\n"

# unset 删除变量,但是无法删除只读变量
#unset a
echo -e ${s}

echo -e ${S}

unset S

echo -e ${S}
echo -e "---------------3-----------------\n"

a=1234
let "a+=1"
echo ${a}

b=${a/12/BB}

echo ${b}

let "b+=1"
echo ${b}

e=""
echo ${e}

# 变量e定义为空值
e=""
echo ${e}  # Output: 没有任何输出

let "e+=1" # 空值 + 1
echo "e = ${e}"  # Output: 1

# 变量f未定义
echo "f = $f"   # Output: f =

let "f+=1" 
echo "f = ${f}" # Output: f = 1

echo -e "--------------3---------------\n"

echo $#

echo -e "$* \n"  #以一个单字符串显示所有向脚本传递的参数

echo -e "$@ \n"  #与$*相同，但是使用时加引号，并在引号中返回每个参数。

echo -e "-----------------4------------------"

my_arr=(value1 value2 value3 value4)

echo -e "${my_arr[2]} \n"  #访问数组元素的一般格式

# 遍历数组格式1
echo -e  "my_arr: ${my_arr[*]}\n"

# 遍历数组格式2
echo -e "my_arr: ${my_arr[@]}\n"

#获取数组长度格式1
echo -e " 数组my_arr长度为： ${#my_arr[*]} \n"

#获取数组长度格式2
echo -e " 数组my_arr长度为： ${#my_arr[@]} \n"

echo -e "-----------------5------------------"


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

str3=${str1}""${str2}
echo ${str3}

#提取字符串

#从位置1开始提取子串
str="hello world"

sub_str=${str:1}
echo -e "sub_str: ${sub_str}\n"

#从位置1开始提取长度为3的子串
str="hello world"

sub_str=${str:1:3}
echo -e  "sub_str: ${sub_str}\n"

#------删除子串----------------------

#表达式                        	含义
#${string#substring}	       从string的开头, 删除最短匹配substring的子串
#${string##substring}	       从string的开头, 删除最长匹配substring的子串
#${string%substring}	       从string的结尾, 删除最短匹配substring的子串
#${string%%substring}	       从string的结尾, 删除最长匹配substring的子串

#记忆：

#   #表示从头匹配，%表示从尾匹配
#   一个符号（#或者%）表示最短匹配，两个符号（##或者%%）表示最长匹配

str="abcabcdefabcabc"

# 从str的开头,删除最短匹配的以a开头c结尾的子串
# 将删除最左端的abc
# 输出：abcdefabcabc
echo -e  "${str#a*c} \n"  

# 从str的开头,删除最长匹配以a开头b结尾的子串
# 将删除abcabcdefabcab
# 输出：c
echo -e  "${str##a*b}\n" 

# 从str的结尾,删除最短匹配以a开头c结尾的子串
# 将删除最右端的abc
# 输出：abcabcdefabc
echo -e  "${str%a*c} \n"  

# 从str的结尾,删除最长匹配以a开头c结尾的子串
# 将删除整个字符串
# 输出：空
echo -e  "${str%%a*b}\n" 


# ----------------------------------------------替换子串-----------------

#  ---表达式-------------------------------含义------------------
#  ${string/substring/replacement}	      使用$replacement 来代替第一个匹配的$substring
#  ${string//substring/replacement}	      使用$replacement 代替所有匹配的$substring
#  ${string/#substring/replacement}    	  如果$string的前缀匹配$substring, 那么就用$replacement来代替匹配到的$substring
#  ${string/%substring/replacement}	      如果$string的后缀匹配$substring, 那么就用$replacement来代替匹配到的$substring

#实例：

str="abcdefabc"

# 用hello替换第一个abc
echo -e "${str/"abc"/"hello"} \n"    # 输出：hellodefabc

# 用hello替换所有的abc
echo -e  "${str//"abc"/"hello"} \n"   # 输出：hellodefhello

# 前缀匹配替换
echo -e  "${str/#"abc"/"world"} \n"   # 输出：worlddefabc

# 后缀匹配替换
echo -e  "${str/％"abc"/"world"} \n"  # 输出：abcdefworld


echo -e "-----------------6------------------"

for skill in C++ C Python Java; do
    echo -e "I am good at ${skill} Script \n"
done

#sudo cp ./test.sh  ./fundenment.sh

your_name="runboy"
greeting="hello,"${your_name}"!!"
echo -e "${greeting} \n"

greeting_2='hello, '$your_name' !'
greeting_3='hello, '${your_name}' !'
greeting_4='hello, ${your_name} !'
echo -e "${greeting_2} \n"
echo -e "${greeting_3} \n"
echo -e "${greeting_4} \n"


echo -e "请输入您的名字：\n"
read name
echo -e "hello, ${name}\n"
echo -e "hello, ${1}\n"

echo -e "it is dick\n" > test.txt

echo `date`

printf "%-10s %-8s %-4s\n"    姓名 性别 体重kg  
printf "%-10s %-8s %-4.2f\n"  "郭靖" 男 "66.1234"
printf "%-10s %-8s %-4.2f\n"  '杨过' 男 48.6543 
printf "%-10s %-8s %-4.2f\n"  郭芙 女 47.9876 

printf "%s\n" "aaaaaaaa" "ssssss"

printf  "%s\n" "--------------7----------------------"
# format-string为双引号
printf "%d %s\n" 1 "abc"

# 单引号与双引号效果一样 
printf '%d %s\n' 1 "abc" 

# 没有引号也可以输出
printf "%s\n" abcdef

# 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf "%s\n" abc def

printf "%s\n" abc def

printf "%s %s %s\n" a b c d e f g h i j

# 如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
printf "%s and %d \n" 

printf  "%s\n" "--------------8----------------------"

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

result1=$(($a+$b)) # 注意等号两边不能有空格,a,b不能用{}括起来
echo -e  "result1 为： $result1 \n"

result1=$((a+b)) # 注意等号两边不能有空格
echo -e  "result1 为： $result1 \n"


printf  "%s\n" "--------------if else ----------------------"

num1="ru1noob"
num2="runoob"
if test $num1 = $num2
then
    echo '两个字符串相等!'
else
    echo '两个字符串不相等!'
fi

printf  "%s\n" "--------------case----------------------"

echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac

printf  "%s\n" "--------------for----------------------"

for str in 'This is a string'
do
    echo  $str
done

echo -e "%s\n" "----------------while---------------------"

int=1
while((${int}<=10))
do
    echo ${int}
    let "int+=1"  #这里可以写 int++, "int++" int+=1都可以
done

echo -e "%s\n" "------------until------------------"
a=0

until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done


printf  "%s\n" "--------------break----------------------"

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


while true  #或while :
do
    echo -n "请输入一个数字:"
    read aNum
    case ${aNum} in
        1|2|3|4|5) echo -e  "你输入的数字为${aNum}\n"
            ;;
        *) echo -e  "你输入的数字不是1到5之间的数字，游戏结束\n"
            break
            ;;
    esac
done


printf  "%s\n" "--------------continue----------------------"

:<<EOF
while :
do
    echo -n "输入 1 到 5 之间的数字: "
    read aNum
    case $aNum in
        1|2|3|4|5) echo -e "你输入的数字为 $aNum! \n"
        ;;
        *) echo -e "你输入的数字不是 1 到 5 之间的! \n"
            continue
            echo "游戏结束"
        ;;
    esac
done

EOF


echo -e "%s\n" "------------重定向------------------"

who > users

wc -l < users

cat << ASSS
欢迎来到
菜鸟教程
www.runoob.com
ASSS

echo -e "%s\n" "------------``，(),(()),[[]],expr,等的用法------------------"

#  ``：引用一个命令的执行结果，$()也是一样
#  在bash shell中, $()与``(反引号)都是用来做命令替换(command substitution)的。

echo -e "当前目录1:`pwd`"

echo -e "当前目录2:$(pwd)"

path1=`pwd`
echo -e "当前目录3: ${path1}"

path2=$(pwd)
echo -e "当前目录4: ${path2}"

string=expr pwd
echo -e "当前目录5: ${string}"

lsall=`ls`
echo -e "\`\`的返回值： ${lasll}"

echo -e `ls -l`


:<<EOF
echo `echo \\` 与 echo $(echo \\)的输出分别是什么？解释原因。
原因： ``里面的\是一个特殊字符，可以用它来引用特殊的字符（当然包括它自身\），而$()里面的\只是普通字符。
echo `echo \\`命令，里层的echo \\得到的结果\，于是外层命令为echo \,输出结果就为空了。
echo $(echo \\)命令，里层的\不再作为特殊字符，其输出就是\\,于是外层命令为echo \\,输出结果就为\了。
EOF

echo `echo \\`

echo $(echo \\)

x=10
y=20

echo "x=${x}, y=${y}"

val=$(($x+$y))
echo "${x} + ${y} = $val"

val1=$((x+y))
echo "${x} + ${y} = $val1"

val2=`expr ${x} + ${y}`
echo "${x} + ${y} = $val2"

let val3=${x}+${y}
echo "${x} + ${y} = $val3"

echo '$n'

:<<EOF
[]即为test命令的另一种形式。
你必须在左括号的右侧和右括号的左侧各加一个空格，否则会报错。
大于符号或小于符号必须要转义，否则会被理解成重定向。
EOF

a=1
if [ $a -ge  0 ]  #对于数字，-eq,-ne,-gt,-ge,-lt,-le,或者转义，但是只能转义">,<"，\<,\>
then
    echo -e "a大于等于0\n"
else
    echo -e "a小于0\n"
fi


str="abccc"

if [ ${str} = "abc" ]  #对于字符串，= ，！=， -z ，-n 
then 
    echo -e "str等于\"abc\" \n"
else
    echo -e "str不等于\"abc\" \n"
fi


:<<EOF
(( ))及[[ ]] :
它们分别是[ ]的针对数学比较表达式和字符串表达式的加强版。

$(())是用来作整数运算的。

在bash中， $(())的整数运算符号大致有这些：

+ - * /    分别为"加、减、乘、除"。
%          余数运算,(模数运算)
++          自加
--          自减

常见的用于(())的测试符号有如下这些：

符号	符号名称
<	   小于号
>   	大于号
<=	   小于或等于
>=	   大于或等于
==	   等于
!=	   不等于

(( ))不需要再将表达式里面的大小于符号转义，除了可以使用标准的数学运算符外，还增加了以下符号：

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
~          “取反”运算符
&          “按位与”运算符
|          位布尔或
^          “异或”运算符

双括号中的变量可以在其前面加 $符号来替换， 也可以不用。括号内支持多个表达式用逗号分开。
单纯用 (( )) 也可重定义变量值，其实就是赋值运算符，比如 a=5; ((a++)) 可将 $a 重定义为6

使用[[ ... ]]条件判断结构，而不是[ ... ]，能够防止脚本许多逻辑错误，比如，&&、||、<和> 操作符能够
正常存在于[[ ]]条件判断结构中，但是如果出现在[ ]结构中的话，会报错。比如可以直
接使用if [[ $a != 1 && $a != 2 ]], 如果不适用双括号, 则为if [ $a -ne 1 ] && [ $a != 2 ]或者if [ $a -ne 1 -a $a != 2 ]。




EOF

a=-1
if (( $a >=  0 )) #也可以用if [[ $a > 0 ]]但是不能用if [[ $a >= 0 ]]
then
    echo -e "a大于等于0\n"
else
    echo -e "a小于0\n"
fi


a=12
if [[ ${a}!=1 && ${a} != 2 ]]
then
    echo -e "a不等于1且a不等于2\n"
else
    echo -e "a等于1或者等于2\n"
fi

echo -e "请输入你想进入的目录：\n"
read path
#cd ${path}

if [[ ${path} = "/home/jack/" ]]
then
    echo -e "进入家目录\n"
    cd ${path}
else
    echo -e "进入非家目录\n"
fi

echo -e "当前目录:`pwd`"
cd /home/jack/

echo -e "当前目录:`pwd`"

read -p "请输入你的爱好：" -t 10 named

echo ${named}
