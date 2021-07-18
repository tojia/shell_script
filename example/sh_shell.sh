#!/bin/bash
#########################################################################
# File Name: sh_shell.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时35分39秒

# 此程序的功能是：把当前目录（包含子目录）下所有后缀为 ".sh" 的文件后缀变更为 ".shell"，之后删除每个文件的第二行。
#########################################################################
#!/bin/bash

ALL_SH_FILE=$(find . -type f -name "*.sh")
for file in ${ALL_SH_FILE[*]}; do
    filename=$(echo $file | awk -F'.sh' '{print $1}')
    new_filename="${filename}.shell"
    mv "$file" "$new_filename"
    sed -i '2d' "$new_filename"
done
