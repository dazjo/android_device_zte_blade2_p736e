#!/system/bin/sh

setprop wifi.interface wlan0
setprop wifi.chip.type BCM_4330
setprop ro.tether.denied false
setprop ro.wps_enabled true
insmod /system/wifi/kineto_gan.ko