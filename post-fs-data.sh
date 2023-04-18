#!/system/bin/sh
if [[ ! -f /data/adb/modules/Alist-Switch/module.prop ]]; then
	mkdir -p /data/adb/modules/Alist-Switch/
	echo 'id=Alist-Switch
name=Alist开关[Switch]
version=ON/OFF
versionCode=20230417
author=Dawnnnnnn[附属模块]
description=控制Alist主模块进程运行状态[[ 开启此模块: 运行主模块 | 关闭此模块: 终止主模块 ]]' > /data/adb/modules/Alist-Switch/module.prop
fi
