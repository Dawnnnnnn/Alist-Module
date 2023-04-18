#!/system/bin/sh
MODDIR=${0%/*}

chmod 777 $MODDIR/bin/alist

while [ "$(getprop sys.boot_completed)" != "1" ]; do
        sleep 5
    done

while true;
do

    PROCESS=$(ps -ef | grep "alist server" | grep -v grep | wc -l)
    MODXINXI="$MODDIR/module.prop"
    if [[ -e /data/adb/modules/Alist-Switch/disable ]]; then
        if [[ $PROCESS != 0 ]]; then
            killall alist
            sed -i "/^description=/c description=当前运行状态: Stopping 已停止" "$MODXINXI"

        fi
    else
        if [[ $PROCESS == 0 ]]; then
            $MODDIR/bin/alist server --data $MODDIR/data&
            sed -i "/^description=/c description=当前运行状态: Running 运行中" "$MODXINXI"
        else
            sed -i "/^description=/c description=当前运行状态: Running 运行中" "$MODXINXI"
        fi
    fi
    sleep 5
done