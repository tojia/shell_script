#!/bin/bash
#########################################################################
# File Name: test.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年06月26日 星期六 09时40分26秒
 
# 此程序的功能是：
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


echo -e  "各种颜色.....\n"

echo -e  "${BLACK_BLACK}黑底黑字${COLOR_RESET}   ${BLACK_RED}黑底红字${COLOR_RESET}   ${BLACK_GREEN}黑底绿字${COLOR_RESET}   ${BLACK_YELLOW}黑底黄字${COLOR_RESET}   ${BLACK_BLUE}黑底蓝字${COLOR_RESET}   ${BLACK_PURTPLE}黑底紫字${COLOR_RESET}   ${BLACK_DEEPGREEN}黑底深绿字${COLOR_RESET}   ${BLACK_WHITE}黑底白字${COLOR_RESET}\n"

echo -e  "${RED_BLACK}红底黑字${COLOR_RESET}   ${RED_RED}红底红字${COLOR_RESET}   ${RED_GREEN}红底绿字${COLOR_RESET}   ${RED_YELLOW}红底黄字${COLOR_RESET}   ${RED_BLUE}红底蓝字${COLOR_RESET}   ${RED_PURTPLE}红底紫字${COLOR_RESET}   ${RED_DEEPGREEN}红底深绿字${COLOR_RESET}   ${RED_WHITE}红底白字${COLOR_RESET}\n"

echo -e  "${GREEN_BLACK}绿底黑字${COLOR_RESET}   ${GREEN_RED}绿底红字${COLOR_RESET}   ${GREEN_GREEN}绿底绿字${COLOR_RESET}   ${GREEN_YELLOW}绿底黄字${COLOR_RESET}   ${GREEN_BLUE}绿底蓝字${COLOR_RESET}   ${GREEN_PURTPLE}绿底紫字${COLOR_RESET}   ${GREEN_DEEPGREEN}绿底深绿字${COLOR_RESET}   ${GREEN_WHITE}绿底白字${COLOR_RESET}\n"

echo -e  "${YELLOW_BLACK}黄底黑字${COLOR_RESET}   ${YELLOW_RED}黄底红字${COLOR_RESET}   ${YELLOW_GREEN}黄底绿字${COLOR_RESET}   ${YELLOW_YELLOW}黄底黄字${COLOR_RESET}   ${YELLOW_BLUE}黄底蓝字${COLOR_RESET}   ${YELLOW_PURTPLE}黄底紫字${COLOR_RESET}   ${YELLOW_DEEPGREEN}黄底深绿字${COLOR_RESET}   ${YELLOW_WHITE}黄底白字${COLOR_RESET}\n"

echo -e  "${BLUE_BLACK}蓝底黑字${COLOR_RESET}   ${BLUE_RED}蓝底红字${COLOR_RESET}   ${BLUE_GREEN}蓝底绿字${COLOR_RESET}   ${BLUE_YELLOW}蓝底黄字${COLOR_RESET}   ${BLUE_BLUE}蓝底蓝字${COLOR_RESET}   ${BLUE_PURTPLE}蓝底紫字${COLOR_RESET}   ${BLUE_DEEPGREEN}蓝底深绿字${COLOR_RESET}   ${BLUE_WHITE}蓝底白字${COLOR_RESET}\n"

echo -e  "${PURPLE_BLACK}紫底黑字${COLOR_RESET}   ${PURPLE_RED}紫底红字${COLOR_RESET}   ${PURPLE_GREEN}紫底绿字${COLOR_RESET}   ${PURPLE_YELLOW}紫底黄字${COLOR_RESET}   ${PURPLE_BLUE}紫底蓝字${COLOR_RESET}   ${PURPLE_PURTPLE}紫底紫字${COLOR_RESET}   ${PURPLE_DEEPGREEN}紫底深绿字${COLOR_RESET}   ${PURPLE_WHITE}紫底白字${COLOR_RESET}\n"

echo -e  "${DEEPGREEN_BLACK}深绿底黑字${COLOR_RESET}   ${DEEPGREEN_RED}深绿底红字${COLOR_RESET}   ${DEEPGREEN_GREEN}深绿底绿字${COLOR_RESET}   ${DEEPGREEN_YELLOW}深绿底黄字${COLOR_RESET}   ${DEEPGREEN_BLUE}深绿底蓝字${COLOR_RESET}   ${DEEPGREEN_PURTPLE}深绿底紫字${COLOR_RESET}   ${DEEPGREEN_DEEPGREEN}深绿底深绿字${COLOR_RESET}   ${DEEPGREEN_WHITE}深绿底白字${COLOR_RESET}\n"

echo -e  "${WHITE_BLACK}白底黑字${COLOR_RESET}   ${WHITE_RED}白底红字${COLOR_RESET}   ${WHITE_GREEN}白底绿字${COLOR_RESET}   ${WHITE_YELLOW}白底黄字${COLOR_RESET}   ${WHITE_BLUE}白底蓝字${COLOR_RESET}  ${WHITE_PURTPLE}白底紫字${COLOR_RESET}   ${WHITE_DEEPGREEN}白底深绿字${COLOR_RESET}   ${WHITE_WHITE}白底白字${COLOR_RESET}\n"


PASSWD="chen" 

echo -e "\e[46;31;1m\t\t\t\t\t\t 系统更新.....\e[0m \n"


echo -e "\033[41m\033[37m\033[1m\033[4m红底+白字+高亮+下划线\033[0m \n"




# echo ${PASSWD}  | sudo -S apt update

echo -e "${GREEN_BLACK}************************* 下载github上的一些配置文件,并分发到各自的目录 *************************${COLOR_RESET}\n"
cd

URL=https://github.com/junjiecjj/configure_file.git
downloaddir=~/tmp/confile-file
#git clone    ${URL}  ${downloaddir}



cp ${downloaddir}/vimrc-file/vimrc_use  ~/.vimrc1
