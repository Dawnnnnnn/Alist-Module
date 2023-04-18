#!/system/bin/sh
MODDIR=${0%/*}
ui_print " -------------------------- "
ui_print " ------ 安装中，请稍等 ------ "
sleep 1
ui_print "
通过禁用/开启附属模块`Alist开关[Switch]`来控制Alist的开关"

ui_print "
请使用浏览器访问 127.0.0.1:5244 登录Alist

账户 admin 密码 admin"
sleep 1

ui_print " ----- 安装已完成，请重启 ---- "
ui_print " -------------------------- "
