#!/bin/bash


PASSWD="@chen1013"

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
		echo -e  "目录已经存在 ${firacode_font_dir} \n"
    fi;
done

echo -e  "fc-cache -f \n"
echo  ${PASSWD}  |  sudo -S fc-cache -f -v


echo -e "5、安装字体 Nerd Fonts  等............. \n"

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

echo -e "6、安装字体 Nerd Fonts  等............. \n"
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



echo -e "7、安装 screenkey  ............. \n"

echo  ${PASSWD}  |  sudo -S screenkey -y


echo -e "8、安装 okular  ............. \n"

echo  ${PASSWD}  |  sudo -S okular -y

echo -e "9、在 Ubuntu 20.04 上安装 Microsoft Edge 浏览器  ............. \n"

echo  ${PASSWD}  |  sudo -S apt updade
echo  ${PASSWD}  |  sudo -S apt upgrade
echo  ${PASSWD}  |  sudo -S apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
echo  ${PASSWD}  |  sudo -S add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"
echo  ${PASSWD}  |  sudo -S  install microsoft-edge-dev


echo -e "10、在 Ubuntu 20.04 上安装 zsh  ............. \n"

echo  ${PASSWD}  |  sudo -S apt zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh


echo  "安装incr......."
cd .oh-my-zsh/plugins/
mkdir incr
cd incr
wget http://mimosa-pudica.net/src/incr-0.2.zsh
cd


echo  "安装incr......."
cd .oh-my-zsh/plugins/
mkdir incr
cd incr
wget http://mimosa-pudica.net/src/incr-0.2.zsh
cd


echo  "安装zsh-autosuggestions"
git clone git://github.com/zsh-users/zsh-autosuggestions  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


echo   "安装zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo   "安装 autojump"
git clone https://github.com/wting/autojump   ~/.oh-my-zsh/plugins/autojump
cd ~/.oh-my-zsh/plugins/autojump
./install.py
cd


echo "安装nvm"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/plugins/zsh-nvm


echo "安装pyenv"
git clone https://github.com/davidparsson/zsh-pyenv-lazy.git  ~/.oh-my-zsh/plugins/pyenv-lazy




echo -e "11、安装终端浏览器  w3m  lynx  Link2 elinks "

echo  ${PASSWD}  |  sudo -S  install w3m  lynx  links2 elinks

echo -e "12、安装射手影音..... \n"

echo  ${PASSWD}  |  sudo -S  install smplayer  vlc


echo -e "13、安装深度截图、火焰截图..... \n"

echo  ${PASSWD}  |  sudo -S  install deepin-screenshot  flameshot

echo -e "14、安装Latex..... \n"

echo  ${PASSWD}  |  sudo -S  install texlive-full texlive-xetex texlive-lang-chinese texstudio

echo -e "15、安装exa..... \n"

curl https://sh.rustup.rs -sSf | sh
wget -c https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip
unzip exa-linux-x86_64-0.8.0.zip
echo  ${PASSWD}  |  sudo -S  mv exa-linux-x86_64 /usr/local/bin/exa

echo -e "16、安装ranger..... \n"

echo  ${PASSWD}  |  sudo -S  install ranger caca-utils  highlight atool w3m mediainfo catdoc docx2txt xlsx2csv  -y

echo -e "17、安装 Glances、sysstat、dstat、duf、..... \n"

echo  ${PASSWD}  |  sudo -S  apt-add-repository ppa:arnaud-hartmann/glances-stable
echo  ${PASSWD}  |  sudo -S  apt-get update -y
echo  ${PASSWD}  |  sudo -S  apt-get install glances -y


echo  ${PASSWD}  |  sudo -S  apt-get install sysstat dstat  -y


wget https://github.com/muesli/duf/releases/download/v0.5.0/checksums.txt
wget https://github.com/muesli/duf/releases/download/v0.5.0/duf_0.5.0_linux_amd64.deb
sha256sum --ignore-missing -c checksums.txt
echo  ${PASSWD}  |  sudo -S dpkg -i duf_0.5.0_linux_amd64.deb


echo -e "18、安装 plots、..... \n"

echo  ${PASSWD}  |  sudo -S add-apt-repository ppa:apandada1/plots
echo  ${PASSWD}  |  sudo -S apt update
echo  ${PASSWD}  |  sudo -S apt install plots -y

echo -e "******************************************************* \n"
echo -e "*************** 19、安装 suckless套装 ***************** \n"
echo -e "******************************************************* \n"
echo  ${PASSWD}  |  sudo -S apt install  libx11-dev  apt-file -y
echo  ${PASSWD}  |  sudo -S   apt-file update

echo  ${PASSWD}  |  sudo -S  apt install -y --force-yes x11-xserver-utils libxrandr-dev libimlib2-dev libharfbuzz-dev 

echo -e "********************安装st**************************** \n"

git clone  https://github.com/junjiecjj/st-1.git
cd st-1
echo  ${PASSWD}  |  sudo -S  make clean install 
cd

echo -e "*******************安装dmenus************************** \n"
git clone https://github.com/junjiecjj/dmenu.git
cd dmenu
echo  ${PASSWD}  |  sudo -S  make clean install
cd


echo -e "*******************安装picom*************************\n"
echo  ${PASSWD}  |  sudo -S  apt install -y --force-yes libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev

git clone https://github.com/jonaburg/picom
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
LDFLAGS="-L/path/to/libraries" CPPFLAGS="-I/path/to/headers" meson --buildtype=release . build
ninja -C build
sudo ninja -C build install
cd

echo -e "*******************安装polybar*************************\n"
echo  ${PASSWD}  |  sudo -S echo "deb http://cz.archive.ubuntu.com/ubuntu groovy main universe"  >> /etc/apt/sources.list
echo  ${PASSWD}  |  sudo -S apt updade
echo  ${PASSWD}  |  sudo -S apt install polybar


echo -e "*******************安装 其他服务软件 *************************\n"

echo  ${PASSWD}  |  sudo -S apt install suckless-tools libx11-dev libxft-dev libxinerama-dev gcc make

echo -e "**************背光灯调整工具********************\n"
echo  ${PASSWD}  |  sudo -S apt install light 

echo -e "**************安装数字键盘工具, 用于进入dwm桌面后自动开启数字键盘********************\n"
echo  ${PASSWD}  |  sudo -S apt install numlockx 

echo -e "************** virtualbox工具********************\n"
echo  ${PASSWD}  |  sudo -S apt install virtualbox-guest-utils virtualbox-guest-X11

echo -e "**************电源监控工具********************\n"
echo  ${PASSWD}  |  sudo -S apt install  acpi acpitool 

echo -e "**************透明配置支持********************\n"
echo  ${PASSWD}  |  sudo -S apt install  compton 
echo  ${PASSWD}  |  sudo -S apt install  xcompmg

echo -e "**************背景图片设置工具********************\n"
echo  ${PASSWD}  |  sudo -S apt install  feh

echo -e "**************用于屏幕亮度的调节********************\n"
echo  ${PASSWD}  |  sudo -S apt install  xbacklight

echo -e "**************安装 nm-applet********************\n"
echo  ${PASSWD}  |  sudo -S apt install  network-manager-gnome

echo -e "**************锁屏********************\n"
echo  ${PASSWD}  |  sudo -S apt install  slimlock

echo -e "**************rofi 是一个快捷的程序启动器********************\n"
echo  ${PASSWD}  |  sudo -S apt install  rofi


echo -e "************** 安装dwmstatus ********************\n"
git clone git://git.suckless.org/dwmstatus
cd dwmstatus
make
sudo ake PREFIX=/usr install
cd

echo -e "************** 安装dwm ********************\n"
git clone  https://github.com/junjiecjj/dwm.git
cd dmenu
echo  ${PASSWD}  |  sudo -S  o make clean install
cd


echo -e "************** 安装 neovim并使用vim-plug插件 ********************\n"
cd
echo "安装pynvim"
pip3 install --user --upgrade pynvim

echo "安装yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
echo  ${PASSWD}  |  sudo -S apt update
echo  ${PASSWD}  |  sudo -S apt install yarn npm

echo "安装ccls"
cd
git clone --depth=1 --recursive https://github.com/MaskRay/ccls
cd ccls
cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_PREFIX_PATH=/path/to/clang+llvm
echo  ${PASSWD}  |  sudo -S cmake --build Release --target install



curl -fLo ~/.config/nvim/autoload/plug.vim  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo -e "************** vim并使用plugin插件 ********************\n"
cd
git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim

















