
##  两个监控机箱设备(除测试计算机)关闭脚本
##  慎点
##  root用户执行
##  wanglei 20210326
##改动：双击直接执行脚本  zx0617

ips="129.20.1.2 129.20.1.3 129.20.1.5 129.20.1.6 129.20.1.7 129.20.1.71 129.20.1.72 129.20.1.81"
# 其中.2/.3系统监控服务端，.4/.5是系统监控客户端，.6/.7是数据库，.71/.72是DTE，.81是健康管理
password="qwehdakdakbj123"

for ip in $ips
do
	echo $password | sudo -S ssh root@$ip init 0
	echo "$ip 完成关机"
done


echo "本机倒计时3s关机"
sleep 3
init 0

