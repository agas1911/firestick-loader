#!/system/bin/sh

echo "Disabling Ads...."
echo ""
echo ""

mount -o rw,remount /system

mv /system/etc/hosts /system/etc/hosts.orig

cp /data/local/tmp/hosts_adfree /system/etc/hosts

chmod 0666 /system/etc/hosts

