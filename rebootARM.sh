#板卡ARM重启脚本 
#可以单独选择重启哪块板卡
#by hegong 2021.9.6


#! /bin/bash



#有一块ARM的板卡重启
function rebootARMSingle(){

expect <<EOF
  set timeout 3
  spawn telnet $1 
  expect "*login"
  send "root\r"
  expect "password*"
  send "root\r"
  expect "*#"
  send "reboot\r"
  expect eof
EOF

while true
do

ping -c 3 -w 3 $1 > /dev/null
if [ $? -eq 0 ];then
echo "板卡已重启完成，请选择下一步执行操作"
break
else
echo "板卡重启中，请等待"
sleep 5
fi

done


}

#有两块ARM的板卡重启
function rebootARMMulti() {

expect <<EOF
  set timeout 3
  spawn telnet $1 
  expect "*login"
  send "root\r"
  expect "password*"
  send "root\r"
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


sleep 40   #板卡重启过程中仍然能ping通，设置延时，直到ping不通


while true
do

ping -c 3 -w 3 $1 > /dev/null
if [ $? -eq 0 ];then
ping -c 3 -w 3 $2 > /dev/null
   if [ $? -eq 0 ];then
   echo "板卡已重启完成，请选择下一步执行操作"
   sleep 2  #使上一行echo打印内容停留2s
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
1.
2.
3.
0.

EOF

read -p "你选择的板卡是：" input

case $input in
1)
rebootARMSingle "ip"
;;

2)
rebootARMMulti "ip" "ip"
;;

3)
rebootARMMulti "ip" "ip"
;;

0)
echo "退出并关闭终端"
sleep 3
break
;;

esac

done






