#!/bin/bash
#########################################################################
# File Name: test.sh
# Author: 陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2019.11.16
#########################################################################


:<<EOF
Linux df 命令用于显示目前在 Linux 系统上的文件系统的磁盘使用情况统计。
语法
 df [选项]... [FILE]...
 文件 - a, --all 包含所有的具有 0 Blocks 的文件系统
 文件 --block-size={SIZE} 使用 {SIZE} 大小的 Blocks
 文件 - h, --human-readable 使用人类可读的格式 (预设值是不加这个选项的...)
 文件 - H, --si 很像 -h, 但是用 1000 为单位而不是用 1024
 文件 - i, --inodes 列出 inode 资讯，不列出已使用 block
 文件 - k, --kilobytes 就像是 --block-size=1024
 文件 - l, --local 限制列出的文件结构
 文件 - m, --megabytes 就像 --block-size=1048576
 文件 --no-sync 取得资讯前不 sync (预设值)
 文件 - P, --portability 使用 POSIX 输出格式
 文件 --sync 在取得资讯前 sync
 文件 - t, --type=TYPE 限制列出文件系统的 TYPE
 文件 - T, --print-type 显示文件系统的形式
 文件 - x, --exclude-type=TYPE 限制列出文件系统不要显示 TYPE
 文件 - v (忽略)
 文件 --help 显示这个帮手并且离开
 文件 --version 输出版本资讯并且离开


Linux du 命令用于显示目录或文件的大小。
du 会显示指定的目录或文件所占用的磁盘空间。
语法
 du [-abcDhHklmsSx][-L < 符号连接 >][-X
<文件>][--block-size][--exclude=< 目录或文件 >][--max-depth=< 目录层数 >][--help][--version][目录或文件]
 参数说明：
-a 或 - all 显示目录中个别文件的大小。
-b 或 - bytes 显示目录或文件大小时，以 byte 为单位。
-c 或 --total 除了显示个别目录或文件的大小外，同时也显示所有目录或文件的总和。
-D 或 --dereference-args 显示指定符号连接的源文件大小。
-h 或 --human-readable 以 K，M，G 为单位，提高信息的可读性。
-H 或 --si 与 - h 参数相同，但是 K，M，G 是以 1000 为换算单位。
-k 或 --kilobytes 以 1024 bytes 为单位。
-l 或 --count-links 重复计算硬件连接的文件。
-L <符号连接> 或 --dereference < 符号连接 > 显示选项中所指定符号连接的源文件大小。
-m 或 --megabytes 以 1MB 为单位。
-s 或 --summarize 仅显示总计。
-S 或 --separate-dirs 显示个别目录的大小时，并不含其子目录的大小。
-x 或 --one-file-xystem 以一开始处理时的文件系统为准，若遇上其它不同的文件系统目录则略过。
-X <文件> 或 --exclude-from=< 文件 > 在 < 文件 > 指定目录或文件。
--exclude=<目录或文件> 略过指定的目录或文件。
--max-depth=<目录层数> 超过指定层数的目录后，予以忽略。
--help 显示帮助。
--version 显示版本信息。


linux中  free - 获得空闲和已使用的内存
您的内存不足了吗？使用 free 命令显示 Linux 系统中可用和已用物理（RAM）以及交换内存的总量。它还显示内核使用的缓冲区和缓存：
jack@linux:$ free
# 以容易理解的格式输出
jack@linux:$ free -h
# 使用 cat 命令查找详细信息
jack@linux:$ cat /proc/meminfo



linux hwinfo命令 - 硬件探针
我们可以快速探测 Linux 服务器或桌面中的硬件:
# 查找关于 Linux 机器的详细信息
hwinfo
# 只显示摘要 #
hwinfo --short
# 查看所有磁盘 #
hwinfo --disk
# 得到一个概述 #
hwinfo --short --block
# 找一个特定的磁盘 #
hwinfo --disk --only /dev/sda
# 尝试 4 个显卡端口的监视器数据 #
hwprobe=bios.ddc.ports=4 hwinfo --monitor
# 限制信息到特定的设备 #
hwinfo --short --cpu --disk --listmd --gfxcard --wlan --printer


linux  id中 - 显示用户信息
显示给定 USER 名称的 Linux 用户和组信息。如果省略用户名，则显示当前用户的信息：
jack@linux:$ id

linux lsblk中 - 列表块存储设备
所有 Linux 块设备均提供对硬件设备的缓冲访问，并允许根据配置读取和写入块。Linux 块设备具有名称。例如，对于 NVMe 是 /dev/nvme0n1，对于 HDD/SSD 等 SCSI 设备是 /dev/sda。但是您不必记住它们。您可以使用以下语法轻松列出它们：
lsblk
# 仅列出 #
lsblk -l
# 使用 grep 命令过滤掉 loop devices #
lsblk -l | grep '^loop'

linux  lstopo命令 - 显示硬件拓扑
是否想查看 Linux 服务器或桌面版的拓扑？尝试：
jack@linux:$ lstopo
jack@linux:$ lstopo-no-graphics
您将看到有关以下信息：
NUMA 个内存节点
共享缓存
CPU 套件
处理器核心
处理器 “线程” 等

linux  lsusb命令 - 列出 USB 设备
我们都使用 USB 设备，例如外部硬盘驱动器和键盘。运行 NA 命令以显示有关 Linux 系统中 USB 总线及其连接的设备的信息。
lsusb
#检测连接到系统的 USB 设备的 PID 和 VID 信息#
sudo usbview
usbview 提供了连接到系统的 USB 设备的图形摘要。通过在树形显示中选择单个设备可以显示详细信息

linux 中lspci命令 - 列出 PCI 设备
我们使用 lspci 命令显示有关系统中的 PCI 总线以及与其连接的设备的信息：
jack@linux:$ lspci


9、timedatectl - 查看当前日期和时区
通常，我们使用 date 命令在 CLI 上设置或获取日期 / 时间信息：
linuxmi@linuxmi:~/www.linuxmi.com$ date | lolcat
2020 年 12 月 20 日 星期日 13:30:22 CST
但是，现代 Linux 发行版使用 timedatectl 命令查询和更改系统时钟及其设置，并启用或禁用时间同步服务（NTPD 和 co）：
jack@linux:$ timedatectl | lolcat




EOF


while true
do
    echo
    "
     选择一个选项:
        1.    系统信息
        2.    可用磁盘空间和已用磁盘空间
        3.    /home 中每个用户的磁盘使用率
        4.    查看当前目录下每个文件夹占用的情况:du --max-depth=1 -h
        5.    查看当前目录的整体占用大小:du -sh
        6.    查看指定目录下每个文件夹占用的情况:du --max-depth=1 -h /xx/xx/
        7.    查看指定目录的整体占用大小:du -sh /xx/xx/
        8.    此电脑的 IP 地址
        9.    此电脑 (假设使用笔记本电池) 的电量剩余
        10.   此电脑的内存相关信息
        11.   此电脑的 CPU 相关信息
        12.   此电脑 CPU 温度
        13.   此电脑网卡信息
        14.   此电脑 Vim 版本
        15.   此电脑 gcc 版本
        16.   此电脑 ipython 版本
        17.   free - 获得空闲和已使用的内存
        18.   id - 显示用户信息
         19.   lstopo - 显示硬件拓扑
         20.   lsusb 列出与本机相连的所有 USB 设备的信息。默认情况下，只列出概要信息，使用 -v 选项可以列出每一个 USB 口的详细信息。
         21.   lsscsi 可以列出诸如硬盘 / 光驱等 SCSI/SATA 设备信息。
         22.   lspci 列出所有 PCI 总线，以及与 PCI 总线相连的所有设备的详细信息，比如 VGA 适配器、显卡、网络适配器、usb 端口、SATA 控制器等。

        q.    退出
    "
    read -p " 请输入您的选项 [0~16] > " anum
    clear
    case ${anum} in
        1) echo -e " 系统信息: $HOSTNAME\n"
            echo -e "`uptime`"
            echo -e "`uname -a`"
        ;;
        2) echo -e " 已用磁盘空间和可用磁盘空间:df -ah\n"
            echo -e "`df -ah`"
        ;;
        3) echo -e "/home/ 目录下每个用户的总磁盘使用情况:du -sh /home/*\n"
            echo -e  "`du -sh /home/*`"
            # exit
        ;;
        4) echo -e " 查看当前目录下每个文件夹的情况:du --max-depth=1 -h\n"
            echo -e "`du --max-depth=1 -h`"
        ;;
        5) echo -e " 查看当前目录整体占用大小:du -sh\n"
            echo -e "`du -sh`"
        ;;
        6) echo -e " 查看指定目录下每个文件夹的情况:du --max-depth -h /xx/xx/xx"
            echo -e " 您想查看哪个目录下的每个文件夹的占用情况？\n"
            read path
            echo -e "`du --max-depth=1 -h ${path}`"
        ;;
        7) echo -e " 查看指定目录的整体占用大小:du -sh /xx/xx/\n"
            echo -e " 您想查看哪个目录的整体占用情况？\n"
            read path
            echo -e "`du -sh ${path}`"
        ;;
        8) echo -e " 此电脑的 IP 地址:ip add\n"
            echo -e "`ip add`"
        ;;
        9) echo -e " 此电脑的电池剩余电量:\n"
            echo -e "`upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"`"
        ;;
        10) echo -e "此电脑的内存相关信息:free -mh\n"
            echo -e "`free -mh`"
        ;;
        11) echo -e "此电脑的CPU相关信息:lscpu \n"
            echo -e  "`lscpu`"
        ;;
        12) echo -e "此电脑的CPU温度:sensors \n"
            echo -e "`sensors`"
        ;;
        13) echo -e "此电脑的网卡信息:"
            echo -e "`lspci`"
        ;;
        14) echo -e "此电脑的vim版本:vim --version \n"
            echo -e "`vim --version`"
        ;;
        15) echo -e "此电脑gcc版本:\n"
            echo -e "`gcc -v`"
            # continue
        ;;
        16) echo -e "此电脑python版本\n"
            echo -e "`python --version`"
        ;;
        17) echo -e "free - 获得空闲和已使用的内存\n"
            echo -e "`free  -h`"
        ;;
        18) echo -e "id - 显示用户信息\n"
            echo -e "`id`"
        ;;
        19) echo -e "lstopo - 显示硬件拓扑\n"
            echo -e "`lstopo`"
        ;;
        20) echo -e " lsusb 列出与本机相连的所有 USB 设备的信息\n"
            echo -e "` lsusb`"
        ;;
        21) echo -e "lsscsi 可以列出诸如硬盘 / 光驱等 SCSI/SATA 设备信息\n"
            echo -e "`lsscsi `"
        ;;
        22) echo -e "lspci 列出所有 PCI 总线，以及与 PCI 总线相连的所有设备的详细信息\n"
            echo -e "`lspci`"
        ;;
        q) echo "退出......" >&2
            exit 1
    esac
    
done
