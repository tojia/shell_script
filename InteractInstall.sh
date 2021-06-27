#!/bin/bash


PASSWD = "@chen1013"

echo  -e  "1、系统更新....\n"

echo ${PASSWD}  |  sudo -S apt update -y
echo ${PASSWD}  |  sudo -S apt upgrade -y



echo -e "2、安装字体 文泉驿微米黑 .............\n"
echo  ${PASSWD}  |  sudo -S apt install fonts-wqy-microhei -y
echo  ${PASSWD}  |  sudo -S apt install fonts-wqy-zenhei -y


echo -e "3、安装字体 微软字体、宋体等 ............. \n"
echo  ${PASSWD}  |  sudo -S apt install ttf-mscorefonts-installer -y
echo  ${PASSWD}  |  sudo -S fc-cache -f -v


echo -e "4、安装字体 FiraCode 等............. \n"
firacode_font_dir="/usr/share/fonts/truetype/firacode"
if [ ! -d "${firacode_font_dir}" ]; then
    echo "mkdir -p ${firacode_font_dir}"
    mkdir -p "${firacode_font_dir}"
else
    echo "Found fonts dir ${firacode_font_dir}"
fi

for type in Bold Light Medium Regular Retina; do
    file_path="${firacode_font_dir}/FiraCode-${type}.ttf"
    file_url="https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true"
    if [ ! -e "${file_path}" ]; then
        echo "wget -O $file_path $file_url"
        wget -O "${file_path}" "${file_url}"
    else
		echo "Found existing file $file_path"
    fi;
done

echo "fc-cache -f"
echo  ${PASSWD}  |  sudo -S fc-cache -f -v


echo -e "5、安装字体 Nerd Fonts  等............. \n"

echo -e  "去https://www.nerdfonts.com/font-downloads下载字体，存放在~/下载/nerdfonts/下  \n"
nerd_font_dir="/usr/share/fonts/truetypes/nerdfonts"
if [ ! -d "${nerd_font_dir}" ]; then
    echo "mkdir -p ${nerd_font_dir}"
    mkdir -p "${nerd_font_dir}"
else
    echo "目录已经存在 ${nerd_font_dir}"
fi


