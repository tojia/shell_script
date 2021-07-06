#!/bin/bash

ssh-keygen -t rsa

cat /root/.ssh/id_rsa.pub | ssh root@12x.xx.x.x 'cat >>.ssh/authorized_keys'

#关闭伺服 ，检前记 ，阵列 
ipadd="129.xx.x.xx 129.xx.1.xx"
for ip in $ipadd
do 
ssh root@$ip shutdown -h
echo "$ip shutdown"
done

echo "1xx.xx.x.xx shutdown"
sleep 5
shutdown -h
