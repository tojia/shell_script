#!/bin/bash
#########################################################################
# File Name: test.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年06月26日 星期六 09时40分26秒
 
# 此程序的功能是：
#########################################################################

PASSWD=chen

echo -e "${GREEN_BLACK}************************* 6、安装字体 JetBrains Fonts 等 *************************${COLOR_RESET}\n"

echo -e  "${WHITE_BLUE}去网址：https://www.jetbrains.com/lp/mono/,下载字体，存放在~/下载/jetbrains/下  ${COLOR_RESET}\n"

cd
URL=https://download.jetbrains.com/fonts/JetBrainsMono-2.225.zip?_ga=2.157492538.1887783421.1625452183-1434134147.1617093312
downloaddir=~/tmp/JetBrains.zip
wget  -c -O  ${downloaddir}  ${URL}


installdir=/usr/share/fonts/truetype/jetbrains1
if [ ! -d "${installdir}" ]; then
	echo -e "${WHITE_BLUE} 创建目录${installdir}  ${COLOR_RESET}\n"
    echo  ${PASSWD}  |  sudo -S mkdir -p  ${installdir}
else
    echo -e  "${WHITE_BLUE} 目录${installdir}已经存在  ${COLOR_RESET}\n"
fi

echo -e "${WHITE_BLUE}解压缩 ${downloaddir} 到 ${installdir} ${COLOR_RESET}"
echo  ${PASSWD}  |  sudo -S 7z x ${downloaddir}  -r -o~/tmp/jetbrains


echo ${PASSWD}  |  sudo -S   cp ~/tmp/jetbrains/fonts/ttf/*   	${installdir}/
echo ${PASSWD}  |  sudo -S   cp ~/tmp/jetbrains/fonts/variable/*   	${installdir}/
echo ${PASSWD}  |  sudo -S   cp ~/tmp/jetbrains/fonts/webfonts/*   	${installdir}/

echo -e "fc-cache -f \n"
cd   ${installdir}
echo -e `pwd`
echo  ${PASSWD}  |  sudo -S mkfontscale # 生成核心字体信息
echo  ${PASSWD}  |  sudo -S mkfontdir # 生成字体文件夹
echo  ${PASSWD}  |  sudo -S fc-cache -f -v # 刷新系统字体缓存
