#!/bin/bash


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


PASSWD="@chen1013"

echo  -e  "${GREEN_BLACK}************************* 1、系统更新 *************************${COLOR_RESET}\n"

echo ${PASSWD}  |  sudo -S apt update
echo ${PASSWD}  |  sudo -S apt upgrade -y



echo -e "${GREEN_BLACK}************************* 2、安装字体 文泉驿微米黑 *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install fonts-wqy-microhei -y
echo  ${PASSWD}  |  sudo -S apt install fonts-wqy-zenhei -y


echo -e "${GREEN_BLACK}************************* 3、安装字体 微软字体、宋体等 *************************${COLOR_RESET} \n"
echo  ${PASSWD}  |  sudo -S apt install ttf-mscorefonts-installer -y
echo  ${PASSWD}  |  sudo -S fc-cache -f -v


echo -e "${GREEN_BLACK}************************* 4、安装字体 FiraCode 等 *************************${COLOR_RESET} \n"
firacode_font_dir="/usr/share/fonts/truetype/firacode"
if [ ! -d "${firacode_font_dir}" ]; then
    echo "mkdir -p ${firacode_font_dir}"
    echo  ${PASSWD}  |  sudo -S mkdir -p "${firacode_font_dir}"
else
    echo -e  "目录已经存在 ${firacode_font_dir} \n"
fi

for type in Bold Light Medium Regular Retina; do
    file_path="${firacode_font_dir}/FiraCode-${type}.ttf"
    file_url="https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true"
    if [ ! -e "${file_path}" ]; then
        echo "wget -O $file_path $file_url"
        wget -O "${file_path}" "${file_url}"
    else
		echo -e  "目录已经存在 ${file_path} \n"
    fi;
done

echo -e  "fc-cache -f \n"
cd firacode_font_dir
echo  ${PASSWD}  |  sudo -S fc-cache -f -v
cd

echo -e "${GREEN_BLACK}************************* 5、安装字体 Nerd Fonts  等 *************************${COLOR_RESET}\n"

echo -e  "去https://www.nerdfonts.com/font-downloads下载字体，存放在~/下载/nerdfonts/下  \n"
nerd_font_dir="/usr/share/fonts/truetypes/nerdfonts"
if [ ! -d "${nerd_font_dir}" ]; then
    echo "mkdir -p ${nerd_font_dir}"
    echo  ${PASSWD}  |  sudo -S mkdir -p "${nerd_font_dir}"
else
    echo -e  "目录已经存在 ${nerd_font_dir} \n"
fi

cd   ${nerd_font_dir}
echo  ${PASSWD}  |  sudo -S cp 下载/nerdfonts/*  .
echo "fc-cache -f"
echo  ${PASSWD}  |  sudo -S fc-cache -f -v

echo -e "${GREEN_BLACK}************************* 6、安装字体 Nerd Fonts 等 *************************${COLOR_RESET}\n"
echo -e  "去网址：https://www.jetbrains.com/lp/mono/,下载字体，存放在~/下载/jetbrains/下  \n"
jetbrains_font_dir=" /usr/share/fonts/truetype/jetbrains"
if [ ! -d "${jetbrains_font_dir}" ]; then
    echo "mkdir -p ${jetbrains_font_dir}"
    echo  ${PASSWD}  |  sudo -S mkdir -p "${jetbrains_font_dir}"
else
    echo "目录已经存在 ${jetbrains_font_dir}"
fi

cd   ${jetbrains_font_dir}
echo  ${PASSWD}  |  sudo -S cp 下载/jetbrains/*  .
echo -e "fc-cache -f \n"
echo  ${PASSWD}  |  sudo -S fc-cache -f -v



echo -e "7${GREEN_BLACK}************************* 、安装 screenkey *************************${COLOR_RESET} \n"

echo  ${PASSWD}  |  sudo -S screenkey -y


echo -e "${GREEN_BLACK}************************* 8、安装 okular *************************${COLOR_RESET} \n"

echo  ${PASSWD}  |  sudo -S okular -y

echo -e "${GREEN_BLACK}************************* 9、在 Ubuntu 20.04 上安装 Microsoft Edge 浏览器 *************************${COLOR_RESET} \n"

echo  ${PASSWD}  |  sudo -S apt updade
echo  ${PASSWD}  |  sudo -S apt upgrade
echo  ${PASSWD}  |  sudo -S apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
echo  ${PASSWD}  |  sudo -S add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"
echo  ${PASSWD}  |  sudo -S  install microsoft-edge-dev


echo -e "${GREEN_BLACK}************************* 10、在 Ubuntu 20.04 上安装 zsh  *************************${COLOR_RESET} \n"

echo  ${PASSWD}  |  sudo -S apt zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh


echo  "${GREEN_BLACK}************************* 安装incr *************************${COLOR_RESET}\n"
cd .oh-my-zsh/plugins/
mkdir incr
cd incr
wget http://mimosa-pudica.net/src/incr-0.2.zsh
cd




echo  "${GREEN_BLACK}************************* 安装zsh-autosuggestions *************************${COLOR_RESET}"
git clone git://github.com/zsh-users/zsh-autosuggestions  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


echo   "${GREEN_BLACK}************************* 安装zsh-syntax-highlighting *************************${COLOR_RESET}"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo   "${GREEN_BLACK}************************* 安装 autojump *************************${COLOR_RESET}"
git clone https://github.com/wting/autojump   ~/.oh-my-zsh/plugins/autojump
cd ~/.oh-my-zsh/plugins/autojump
./install.py
cd


echo "${GREEN_BLACK}************************* 安装nvm *************************${COLOR_RESET}\n"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/plugins/zsh-nvm


echo "${GREEN_BLACK}************************* 安装pyenv *************************${COLOR_RESET}\n"
git clone https://github.com/davidparsson/zsh-pyenv-lazy.git  ~/.oh-my-zsh/plugins/pyenv-lazy




echo -e "${GREEN_BLACK}************************* 11、安装终端浏览器  w3m  lynx  Link2 elinks *************************${COLOR_RESET}\n"

echo  ${PASSWD}  |  sudo -S  install w3m  lynx  links2 elinks

echo -e "${GREEN_BLACK}************************* 12、安装射手影音 *************************${COLOR_RESET}\n"

echo  ${PASSWD}  |  sudo -S  install smplayer  vlc


echo -e "${GREEN_BLACK}************************* 13、安装深度截图、火焰截图 *************************${COLOR_RESET}\n"

echo  ${PASSWD}  |  sudo -S  install deepin-screenshot  flameshot

echo -e "${GREEN_BLACK}************************* 14、安装Latex *************************${COLOR_RESET}\n"

echo  ${PASSWD}  |  sudo -S  install texlive-full texlive-xetex texlive-lang-chinese texstudio

echo -e "${GREEN_BLACK}************************* 15、安装exa *************************${COLOR_RESET} \n"

curl https://sh.rustup.rs -sSf | sh
wget -c https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip
unzip exa-linux-x86_64-0.8.0.zip
echo  ${PASSWD}  |  sudo -S  mv exa-linux-x86_64 /usr/local/bin/exa

echo -e "${GREEN_BLACK}************************* 16、安装ranger *************************${COLOR_RESET}\n"

echo  ${PASSWD}  |  sudo -S  install ranger caca-utils  highlight atool w3m mediainfo catdoc docx2txt xlsx2csv  -y

echo -e "${GREEN_BLACK}************************* 17、安装 Glances、sysstat、dstat、duf *************************${COLOR_RESET}\n"

echo  ${PASSWD}  |  sudo -S  apt-add-repository ppa:arnaud-hartmann/glances-stable
echo  ${PASSWD}  |  sudo -S  apt-get update -y
echo  ${PASSWD}  |  sudo -S  apt-get install glances -y


echo  ${PASSWD}  |  sudo -S  apt-get install sysstat dstat  -y


wget https://github.com/muesli/duf/releases/download/v0.5.0/checksums.txt
wget https://github.com/muesli/duf/releases/download/v0.5.0/duf_0.5.0_linux_amd64.deb
sha256sum --ignore-missing -c checksums.txt
echo  ${PASSWD}  |  sudo -S dpkg -i duf_0.5.0_linux_amd64.deb


echo -e "${GREEN_BLACK}************************* 18、安装 plots、*************************${COLOR_RESET} \n"

echo  ${PASSWD}  |  sudo -S add-apt-repository ppa:apandada1/plots
echo  ${PASSWD}  |  sudo -S apt update
echo  ${PASSWD}  |  sudo -S apt install plots -y

echo -e "${GREEN_BLACK}************************* 19、安装 suckless套装*************************${COLOR_RESET}  \n"
echo  ${PASSWD}  |  sudo -S apt install  libx11-dev  apt-file -y
echo  ${PASSWD}  |  sudo -S   apt-file update

echo  ${PASSWD}  |  sudo -S  apt install -y --force-yes x11-xserver-utils libxrandr-dev libimlib2-dev libharfbuzz-dev

echo -e "${GREEN_BLACK}************************* 安装st *************************${COLOR_RESET}\n"

git clone  https://github.com/junjiecjj/st-1.git
cd st-1
echo  ${PASSWD}  |  sudo -S  make clean install
cd

echo -e "${GREEN_BLACK}************************* 安装dmenus *************************${COLOR_RESET}\n"
git clone https://github.com/junjiecjj/dmenu.git
cd dmenu
echo  ${PASSWD}  |  sudo -S  make clean install
cd


echo -e "${GREEN_BLACK}************************* 安装picom *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S  apt install -y --force-yes libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev

git clone https://github.com/jonaburg/picom
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
LDFLAGS="-L/path/to/libraries" CPPFLAGS="-I/path/to/headers" meson --buildtype=release . build
ninja -C build
sudo ninja -C build install
cd

echo -e "${GREEN_BLACK}************************* 安装polybar *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S echo "deb http://cz.archive.ubuntu.com/ubuntu groovy main universe"  >> /etc/apt/sources.list
echo  ${PASSWD}  |  sudo -S apt updade
echo  ${PASSWD}  |  sudo -S apt install polybar


echo -e "${GREEN_BLACK}************************* 安装 其他服务软件 *************************${COLOR_RESET}\n"

echo  ${PASSWD}  |  sudo -S apt install suckless-tools libx11-dev libxft-dev libxinerama-dev gcc make

echo -e "${GREEN_BLACK}************************* 背光灯调整工具 *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install light

echo -e "${GREEN_BLACK}************************* 安装数字键盘工具, 用于进入dwm桌面后自动开启数字键盘 *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install numlockx

echo -e "${GREEN_BLACK}*************************  virtualbox工具 *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install virtualbox-guest-utils virtualbox-guest-X11

echo -e "${GREEN_BLACK}************************* 电源监控工具 *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install  acpi acpitool

echo -e "${GREEN_BLACK}************************* 透明配置支持 *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install  compton
echo  ${PASSWD}  |  sudo -S apt install  xcompmg

echo -e "${GREEN_BLACK}************************* 背景图片设置工具 *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install  feh

echo -e "${GREEN_BLACK}************************* 用于屏幕亮度的调节 *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install  xbacklight

echo -e "${GREEN_BLACK}************************** 安装 nm-applet *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install  network-manager-gnome

echo -e "${GREEN_BLACK}************************* ************** 锁屏 *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install  slimlock

echo -e "${GREEN_BLACK}************************** rofi 是一个快捷的程序启动器 *************************${COLOR_RESET}\n"
echo  ${PASSWD}  |  sudo -S apt install  rofi


echo -e "${GREEN_BLACK}************************* 安装dwmstatus *************************${COLOR_RESET}\n"
git clone git://git.suckless.org/dwmstatus
cd dwmstatus
make
sudo ake PREFIX=/usr install
cd

echo -e "${GREEN_BLACK}************************* 安装dwm *************************${COLOR_RESET}\n"
git clone  https://github.com/junjiecjj/dwm.git
cd dmenu
echo  ${PASSWD}  |  sudo -S  make clean install
cd


echo "${GREEN_BLACK}************************* 安装pynvim *************************${COLOR_RESET}"
pip3 install --user --upgrade pynvim

echo "${GREEN_BLACK}************************* 安装yarn *************************${COLOR_RESET}"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
echo  ${PASSWD}  |  sudo -S apt update
echo  ${PASSWD}  |  sudo -S apt install yarn npm

echo "${GREEN_BLACK}************************* 安装ccls *************************${COLOR_RESET}"
cd
git clone --depth=1 --recursive https://github.com/MaskRay/ccls
cd ccls
cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_PREFIX_PATH=/path/to/clang+llvm
echo  ${PASSWD}  |  sudo -S cmake --build Release --target install



curl -fLo ~/.config/nvim/autoload/plug.vim  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo -e "${GREEN_BLACK}************************* 安装 neovim并使用vim-plug插件 *************************${COLOR_RESET}\n"
cd



echo -e "${GREEN_BLACK}************************* vim并使用plugin插件 *************************${COLOR_RESET}\n"
cd
git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim

















