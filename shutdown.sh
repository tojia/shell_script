#!/bin/bash
#关闭伺服界面，检前记录，阵列天线
ipadd="129.20.1.31 129.20.1.41"
for ip in $ipadd
do 
ssh root@$ip shutdown -h
echo "$ip shutdown"
done

echo "129.20.1.11 shutdown"
sleep 5
shutdown -h

