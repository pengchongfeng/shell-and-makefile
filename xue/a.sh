#!/bin/sh
a='hello world' #变量赋值
echo $a #打印变量
echo $? #0表示上一个命令执行成功
#set     #显示本地所有变量（包括envinon）
#unset a #释放变量
b=3
echo ${a} ${b}

#test whether variable has get value
#if it is yes, then use it;or use new value.
#${variable:-value}
echo ${a:-"new value"}
echo ${color:-"new color"}

#设置变量后不再改变变量的值
readonly color
#color="blue" #提示readonly

#修改环境变量
#1，直接修改/etc/profile
#2，修改~下的bash
#3，在shell命令行下用如下命令临时修改
#a="hello world"
#export a #将a导入到env。
#PATH="dd" #直接修改env中的PATH
#unset a #从env删除了a

echo "-----------------------------------"
echo "我的pid:"
echo $$ #shell进程自己的pid

echo "我的名称:"
echo $0 #脚本名称. $1第一个参数 $2第二个参数......
echo "我的命令行参数:"
echo $* #命令行参数 $1~$n  

echo "命令行参数的个数（不包括自己）:"
echo $# #命令行参数的个数（不包括自己）
echo $@ #同$* 区别：$@每个参数是一个单词，循环执行语句。$*整体参数作为一个单词，一次执行语句。

#运算expr 直接echo出来了
expr 661 + 5

test "peng" = "string"

#运算符：= == != ! -o -a 其中-o对应or -a对应and
#关系运算符:
#-eq    equal                true
#-ne    not equal            true
#-gt    greater than         true
#-lt    litter than          true
#-ge    greater equal than   true
#-le    litter equal than    true

#字符串运算符：
# =   字符串相等 true
#!=   字符串不等 true
#-z   空字符串   true
#-n   非空字符串 true

#检测文件特征：
#-d file  目录？        true
#-r file  可读？        true
#-w file  可写？        true
#-x file  可执行？      true
#-s file  空文件？      true
#-e file  文件/目录存在?true


str1="deoxyribonucleic"
str2="acid"
#拼接字符串
str=${str1}"-"${str2} #"deoxyribonucleic-acid"
echo ${str}
echo ${#str2} #str2长度
echo ${str:2:4} #"oxyr" 即从0开始，和python切片一样


