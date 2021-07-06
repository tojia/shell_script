#!/bin/bash
#关闭 
ipadd="xxx.xx.x.3x  xxx.xxx.1.41"
for ip in $ipadd
do 
ssh root@$ip shutdown -h
echo "$ip shutdown"
done

echo "129.xx.1.xx shutdown"
sleep 5
shutdown -h

