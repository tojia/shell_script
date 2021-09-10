#DBF板卡ARM重启脚本
#可以单独选择重启哪块板卡
#by hegong 2021.9.6


#! /bin/bash
function rebootARMSingle(){

expect <<EOF
  spawn telnet $1
  expect "*login"
  send "root\r"
  expect "password*"
  send "root1231\r"
  expect "*#"
  send "reboot\r"
  expect eof
EOF

while true
do

ping -c 3 -w 3 $1>> /dev/null
if [ $? -eq 0 ];then
echo "板卡已重启完成，请选择下一步执行操作"
break
else
echo "板卡重启中，请等待"
sleep 5
fi

done


}

function rebootARMMulti() {

expect <<EOF
  set timeout 3
  spawn telnet $1
  expect "*login"
  send "root\r"
  expect "password*"
  send "rootsadada\r"
  expect "*#"
  send "reboot\r"
  expect eof
EOF

expect <<EOF
  set timeout 3
  spawn telnet $2
  expect "*login"
  send "root\r"
  expect "password*"
  send "root\r"
  expect "*#"
  send "reboot\r"
  expect eof
EOF


sleep 40
while true
do

ping -c 3 -w 3 $1 #>> /dev/null
if [ $? -eq 0 ];then
ping -c 3 -w 3 $2 #>> /dev/null
   if [ $? -eq 0 ];then
   echo "板卡已重启完成，请选择下一步执行操作"
   sleep 2
   break
   else
   echo "板卡重启中，请等待"
   fi
else
echo "板卡重启中，请等待"
fi

done


}




#function rebootARMAll{
#
#
#
#}




while true
do

cat <<EOF
*******选择你要重启的板卡********
1.时序板1（137.20.1.131）
2.xxxxxx处理板（137.20.1.133/134）
3.xxxxxxxx处理板1（137.20.1.135/136）
4.xxxxxxxxx处理板2（137.20.1.137/138）
5.xxxxxxxxxx处理板3（137.20.1.139/140）
6.xxxxxxxxxxx处理板（137.20.1.141/142）
7.xxxxxxxxxxxxxxx处理板1（137.20.1.143/144）
8.处理板2（137.20.1.145/146）
9.处理板3（137.20.1.147/148）
10.处理板（137.20.1.149/150）
11.处理板（137.20.1.151/152）
12.处理板1（137.20.1.153/154）
13.成处理板2（137.20.1.155/156）
14.成处理板3（137.20.1.157/158）
15.处理板（137.20.1.159/160）
16.处理板1（137.20.1.161/162）
17.处理板2（137.20.1.163/164）
18.处理板3（137.20.1.165/166）
19.处理板（137.20.1.167/168）
20.处理板（137.20.1.169/170）
21.处理板（137.20.1.171/172）
22.处理板（137.20.1.173/174）
23.（主）（137.20.1.12）
24.全部重启
0.退出

EOF

read -p "你选择的板卡是：" input

case $input in
1)
rebootARMSingle "129.20.1.131"
;;

2)
rebootARMMulti "129.20.1.133" "129.20.1.134"
;;

3)
rebootARMMulti "129.20.1.135" "129.20.1.136"
;;

4)
rebootARMMulti "129.20.1.137" "129.20.1.138"
;;

5)
rebootARMMulti "129.20.1.139" "129.20.1.140"
;;

6)
rebootARMMulti "129.20.1.141" "129.20.1.142"
;;

7)
rebootARMMulti "129.20.1.143" "129.20.1.144"
;;

8)
rebootARMMulti "129.20.1.145" "129.20.1.146"
;;

9)
rebootARMMulti "129.20.1.147" "129.20.1.148"
;;

10)
rebootARMMulti "129.20.1.149" "129.20.1.150"
;;

11)
rebootARMMulti "129.20.1.151" "129.20.1.152"
;;

12)
rebootARMMulti "129.20.1.153" "129.20.1.154"
;;

13)
rebootARMMulti "129.20.1.155" "129.20.1.156"
;;

14)
rebootARMMulti "129.20.1.157" "129.20.1.158"
;;

15)
rebootARMMulti "129.20.1.159" "129.20.1.160"
;;

16)
rebootARMMulti "129.20.1.161" "129.20.1.162"
;;

17)
rebootARMMulti "129.20.1.163" "129.20.1.164"
;;

18)
rebootARMMulti "129.20.1.165" "129.20.1.166"
;;

19)
rebootARMMulti "129.20.1.167" "129.20.1.168"
;;

20)
rebootARMMulti "129.20.1.169" "129.20.1.170"
;;

21)
rebootARMMulti "129.20.1.171" "129.20.1.172"
;;

22)
rebootARMMulti "129.20.1.173" "129.20.1.174"
;;

23)
rebootARMSingle "129.20.1.12"
;;

0)
echo "退出并关闭终端"
sleep 3
break
;;

esac

done






