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




