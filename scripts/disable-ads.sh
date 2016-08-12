#!/system/bin/sh

echo "Disabling Ads...."
echo ""
echo ""

mount -o rw,remount /system

rm /system/etc/hosts /system/etc/hosts

mv /data/local/tmp/hosts /system/etc/hosts

chown 0.0 /system/etc/hosts
chmod 0666 /system/etc/hosts


