#!/system/bin/sh

# Source:
# https://github.com/dirtycow/dirtycow.github.io/issues/25#issuecomment-255852675

echo "Turning Off Periodic Writeback...."
echo ""
echo ""

echo 0 > /proc/sys/vm/dirty_writeback_centisecs