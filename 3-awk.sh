#!/bin/bash

#参数 -F  指定输入文件折分隔符
#example
awk -F: '/^root/{print $7}' /etc/passwd 
#逗号分隔
awk -F: '/^root/{print $1","$7}'  /etc/passwd

awk -F : 'BEGIN{print "user, shell"} {print $1" ,"$7} END{print "bg,/bin/bg"}' /etc/passwd

#参数 -v  赋值一个用户变量
awk -v i=1 -F : '{print $3+i}' /etc/passwd

#内置变量 NF 浏览记录的域的个数
awk -F : '{print "filename:" FILENAME ",linenumber:" NR ",columns:" NF}' /etc/passwd
ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk -F " " '{print $1}'

#查询sed.txt中空行所在的行号
awk '/^$/{print NR}' sed.txt

#内置便令 NR 已读的记录数
awk -F : '{print "filename:" FILENAME ",linenumber:" NR ",columns:" NF}' /etc/passwd


